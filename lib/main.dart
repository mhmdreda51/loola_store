import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:loola_store/view/screens/Auth/cubit/auth_cubit.dart';
import 'package:loola_store/view/screens/home/controller/home_cubit.dart';
import 'package:loola_store/view/screens/search/controller/search_cubit.dart';
import 'package:loola_store/view/screens/splash/splash_screen.dart';

import 'core/blocObserver/bloc_observer.dart';
import 'core/cacheHelper/cache_helper.dart';
import 'core/router/router.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  //===============================================================
  Bloc.observer = MyBlocObserver();
  //===============================================================
  //===============================================================
  await CacheHelper.init();
  //===============================================================
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => AuthCubit(),
        ),
        BlocProvider(
          create: (context) => SearchCubit(),
        ),
        BlocProvider(
          create: (context) => HomeCubit(),
        ),
      ],
      child: MaterialApp(
        title: 'Loola Store',
        debugShowCheckedModeBanner: false,
        navigatorKey: navigatorKey,
        onGenerateRoute: onGenerateRoute,
        home: SplashScreen(),
        theme: ThemeData(
          fontFamily: GoogleFonts.cairo().fontFamily,
        ),
      ),
    );
  }
}
