import 'dart:ui';
import 'dart:convert';
import 'package:flutter/services.dart';
import 'package:flutter/material.dart';

class CurrentLocalization {
  final Locale locale;
  CurrentLocalization(this.locale);

  static CurrentLocalization of(BuildContext context) {
    return Localizations.of(context, CurrentLocalization);
  }

  static Map<String, Map<String, String>> _localization = {};

  Future loadJson() async {
    final jsonString = await rootBundle.loadString('assets/json/i18n.json');
    final Map<String, dynamic> result = json.decode(jsonString);
    _localization = result.map((key, value) {
      return MapEntry(key, value.cast<String, String>());
    });
  }

  String? get title {
    return _localization[locale.languageCode]!['title'];
  }

  String? get hello {
    return _localization[locale.languageCode]!['hello'];
  }

  String? get pickTime {
    return _localization[locale.languageCode]!['pickTime'];
  }
}
