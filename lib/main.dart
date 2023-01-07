import 'package:flutter/material.dart';
import 'package:flutter_app/generated/l10n.dart';
import 'package:flutter_app/router.dart';
import 'package:flutter_app/size_fit.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:provider/provider.dart';
import 'view_model/initialize_provider.dart';

void main() => runApp(MultiProvider(
      providers: providers,
      child: HomeState(),
    ));

class HomeState extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return MyApp();
  }
}

class MyApp extends State<HomeState> {
  @override
  Widget build(BuildContext context) {
    SizeFit.initialize();
    return MaterialApp(
        supportedLocales: S.delegate.supportedLocales,
        localizationsDelegates: [
          GlobalMaterialLocalizations.delegate,
          GlobalWidgetsLocalizations.delegate,
          GlobalCupertinoLocalizations.delegate,
          S.delegate
        ],
        theme: ThemeData(
            // colorScheme: ColorScheme.fromSwatch().copyWith(
            //   primary: Color.fromARGB(255, 120, 240, 210),
            //   secondary: Color.fromARGB(255, 120, 240, 210),
            // ),
            primaryColor: Color.fromARGB(255, 120, 240, 210),
            // splashColor: Colors.transparent,
            accentColor: Colors.deepOrange[300],
            outlinedButtonTheme: OutlinedButtonThemeData(
                style: ButtonStyle(
              padding: MaterialStateProperty.all(EdgeInsets.zero),
              minimumSize: MaterialStateProperty.all(Size(100, 40)),
              backgroundColor: MaterialStateProperty.all(Colors.red),
              textStyle: MaterialStateProperty.all(
                TextStyle(fontSize: 30),
              ),
            )),
            cardTheme: CardTheme(
                color: Colors.green,
                margin: EdgeInsets.all(10),
                shadowColor: Colors.red,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10)),
                clipBehavior: Clip.hardEdge,
                elevation: 20.34),
            textTheme: TextTheme(
              bodyText2: TextStyle(fontSize: 18, color: Colors.pink),
            )),
        darkTheme: ThemeData(
          // colorScheme: ColorScheme.fromSwatch().copyWith(
          //   primary: Color.fromARGB(255, 120, 240, 210),
          //   secondary: Color.fromARGB(255, 120, 240, 210),
          // ),
          primaryColor: Colors.grey,
          // splashColor: Colors.transparent,
          // accentColor: Colors.deepOrange[300],
          // outlinedButtonTheme: OutlinedButtonThemeData(
          //     style: ButtonStyle(
          //   padding: MaterialStateProperty.all(EdgeInsets.zero),
          //   minimumSize: MaterialStateProperty.all(Size(100, 40)),
          //   backgroundColor: MaterialStateProperty.all(Colors.red),
          //   textStyle: MaterialStateProperty.all(
          //     TextStyle(fontSize: 30),
          //   ),
          // )),
          // cardTheme: CardTheme(
          //     color: Colors.green,
          //     margin: EdgeInsets.all(10),
          //     shadowColor: Colors.red,
          //     shape: RoundedRectangleBorder(
          //         borderRadius: BorderRadius.circular(10)),
          //     clipBehavior: Clip.hardEdge,
          //     elevation: 20.34),
          // textTheme: TextTheme(
          //   bodyText2: TextStyle(fontSize: 18, color: Colors.pink),
          // )
        ),
        routes: RouterConfig.routes,
        initialRoute: RouterConfig.initialRoute,
        onGenerateRoute: RouterConfig.generateRoute,
        onUnknownRoute: RouterConfig.unknownRoute);
  }
}
