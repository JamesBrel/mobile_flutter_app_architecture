// import 'package:get_it/get_it.dart';

// import 'backend/data/reposit_impls/welcome_reposit_impl.dart';
// import 'backend/data/services/welcome_services/welcome_abst.dart';
// import 'backend/data/services/welcome_services/welcome_impl.dart';
// import 'backend/domain/reposit_absts/welcome_reposit_abst.dart';
// import 'backend/domain/usecases/welcome_usecases/welcome_usecase.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

// import 'package:flutter_dotenv/flutter_dotenv.dart';

import 'frontend/presentation/logic/helpers/device_helper.dart';

// final sl = GetIt.instance;

Future<void> init() async {
//! WidgetFlutter and DeviceType Initialization
  // active these lines down

  WidgetsFlutterBinding.ensureInitialized();
  await DeviceHelper.deviceTypeChecker().whenComplete(() {
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
    ]);
  });

//! Firebase core and Emulators initialization
//* Firebase core
  //-- remove the slash and complete the firebase core initialisation after create the project on the plateform --//

  // await Firebase.initializeApp(
  //     name: 'AppName',
  //     options: const FirebaseOptions(
  //         appId: 'my_appId',
  //         apiKey: 'my_apiKey',
  //         messagingSenderId: 'my_messagingSenderId',
  //         projectId: 'my_projectId'));

//* Firebase Emulators

  // In This place you will initialize the emulators if you use the Firebase Emulator Suite
  // you will import the firebase_local_configs.dart as firebase

  // if (const bool.fromEnvironment("USE_FIREBASE_EMU")) {
  //   await firebase.configureFirebaseAuth();
  //   await firebase.configureFirebaseStorage();
  //   firebase.configureFirebaseFirestore();
  //   firebase.configureFirebaseFunctions();
  // }

//! initialisation of dotenv
  // There you can initialize your env file, you can activate the below line

  // await dotenv.load(fileName: "assets/.env");

//! Database internal initialisation
  // There you can initialize your Internal Database
  // like sqflite, Hive or Adapter s' Hive generate or ObjectBox

//! External Variables

  // variables of instance's class
  // serviceLocator.registerLazySingleton code

  /**
   *  exemples : 
   *  final sharedPreference = await SharedPreferences.getInstance();
   *  sl.registerLazySingleton(() => sharedPreference);
   * 
   */

//! services

  // sl.registerLazySingleton<WelcomeAbst>(() => WelcomeImpl());

//! Repositories

  // sl.registerLazySingleton<WelcomeRepositAbst>(
  //     () => WelcomeRepositImpl(welcomeAbst: sl.call()));
//! Usecases

  // sl.registerLazySingleton<WelcomeUsecase>(
  //     () => WelcomeUsecase(welcomeRepositAbst: sl.call()));

//! Bloc

  /**
   *  here you must register the bloc state manager using : sl.registerFactory(() => null);
   */

//! Cubit

  /**
   *  here you must register the cubit state manager using : sl.registerFactory(() => null);
   */
}
