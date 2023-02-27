import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'src/frontend/presentation/logic/helpers/size_config_helper.dart';
import 'src/frontend/presentation/logic/helpers/translations_delegate_helper.dart';
import 'src/frontend/presentation/logic/routes/mobile_routes.dart';
import 'src/frontend/presentation/themes/themes_app.dart';
import 'src/injection.dart' as insert;
import 'src/utils/constants/string_const.dart';
import 'src/utils/enums/themes_enum.dart';

void main() async {
  await insert.init();

  // Bloc.observer = MyBlocObserver();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
        designSize: SizeConfigHelper.sizeScreen(),
        minTextAdapt: true,
        splitScreenMode: true,
        builder: (context, child) => MaterialApp.router(
              routeInformationProvider:
                  MobileRoutes.router.routeInformationProvider,
              routeInformationParser:
                  MobileRoutes.router.routeInformationParser,
              routerDelegate: MobileRoutes.router.routerDelegate,
              debugShowCheckedModeBanner: true,
              title: titleApp,
              theme: ThemesApp.themes[Themes.lightTheme],
              localizationsDelegates: const [
                TranslationsDelegateHelper(),
                GlobalMaterialLocalizations.delegate,
                GlobalCupertinoLocalizations.delegate,
                GlobalWidgetsLocalizations.delegate,
              ],
              supportedLocales: const [
                Locale('fr', 'FR'),
                Locale('en', 'US'),
              ],
              localeResolutionCallback: (locale, supportedLocales) {
                for (var supportedLocale in supportedLocales) {
                  if (supportedLocale.languageCode == locale!.languageCode &&
                      supportedLocale.countryCode == locale.countryCode) {
                    return supportedLocale;
                  }
                }
                return supportedLocales.first;
              },
            ));
  }
}
