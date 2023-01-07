import 'package:dio/dio.dart';
import './http_config.dart';

class HttpRequest {
  static final BaseOptions baseOptions = BaseOptions(
    baseUrl: HttpConfig.baseUrl,
    connectTimeout: HttpConfig.timeout,
  );
  static final Dio dio = Dio(baseOptions);
  static Future<T> request<T>(String url,
      {String method = 'get',
      Map<String, dynamic>? params,
      Map<String, dynamic>? dataParams,
      Interceptor? inter}) async {
    final options = Options(method: method);

    Interceptor dinter = InterceptorsWrapper(onRequest: (options, handler) {
      return handler.next(options);
    }, onResponse: (response, handler) {
      return handler.next(response);
    }, onError: (DioError err, handler) {
      return handler.next(err);
    });

    List<Interceptor> inters = [dinter];
    if (inter != null) {
      inters.add(inter);
    }
    dio.interceptors.addAll(inters);

    try {
      Response response = await dio.request(url,
          queryParameters: params, data: dataParams, options: options);
      return response.data;
    } on DioError catch (err) {
      return Future.error(err);
    }
  }
}
