// import 'package:go_router/go_router.dart';

import '../../../../utils/constants/routes_const.dart' as route;
import '../../layouts/screens/welcome_screen.dart';

class MobileRoutes {
  static GoRouter router = GoRouter(
    routes: <GoRoute>[
      GoRoute(
        path: route.welcomeScreen,
        builder: (context, state) => const WelcomeScreen(),
      ),
      //  GoRoute(
      //    path: route.anotherClassNameScreen,
      //    builder: (context, state) => const AnotherClassNameScreen(),
      //  ),
    ],
  );
}
