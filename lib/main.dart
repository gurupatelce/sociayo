import 'package:base_test/app/locator.dart';
import 'package:base_test/utils/constants.dart';
import 'package:base_test/utils/localization/localization.dart';
import 'package:base_test/widgets/base_dialog.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:stacked_services/stacked_services.dart';

import 'app/router.gr.dart';

void main() {
  setUpLocator();
  setUpDialogUi();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
    ]);

    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
      statusBarColor: Colors.transparent, // status bar color
    ));

    return MaterialApp(
      initialRoute: Routes.home,
      onGenerateRoute: Router().onGenerateRoute,
      navigatorKey: locator<NavigationService>().navigatorKey,
      theme: ThemeData(
        primarySwatch: ColorConstants.primaryColor,
      ),
      localizationsDelegates: [
        DefaultMaterialLocalizations.delegate,
        DefaultWidgetsLocalizations.delegate,
        const MyLocalizationsDelegate()
      ],
      supportedLocales: [
        const Locale('en', ''),
      ],
    );
  }
}
