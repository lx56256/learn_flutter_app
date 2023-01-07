import 'package:flutter/cupertino.dart';

import 'current_localization.dart';

class CurrentLocalizationDelegate
    extends LocalizationsDelegate<CurrentLocalization> {
  static CurrentLocalizationDelegate delegate = CurrentLocalizationDelegate();
  @override
  bool isSupported(Locale locale) {
    // TODO: implement isSupported
    return ['zh', 'en'].contains(locale.languageCode);
  }

  @override
  bool shouldReload(covariant LocalizationsDelegate<CurrentLocalization> old) {
    // TODO: implement shouldReload
    return false;
  }

  @override
  Future<CurrentLocalization> load(Locale locale) async {
    // TODO: implement load
    final localizations = CurrentLocalization(locale);
    await localizations.loadJson();
    return localizations;
  }
}
