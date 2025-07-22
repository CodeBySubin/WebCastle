import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:webcastle/core/constants/app_strings.dart';
import 'package:webcastle/core/routes/route_genarator.dart';
import 'package:webcastle/features/authentication/presentation/bloc/login_bloc.dart';
import 'package:webcastle/features/home/presentation/bloc/home_bloc.dart';
import 'package:webcastle/injection/injection.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  setupLocator();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(375, 812),
      minTextAdapt: true,
      splitScreenMode: true,
      child: MultiBlocProvider(
        providers: [
          BlocProvider<LoginBloc>(create: (_) => getIt<LoginBloc>()),
          BlocProvider<HomeBloc>(create: (_) => getIt<HomeBloc>()),
        ],
        child: MaterialApp.router(
          theme: ThemeData(
            fontFamily: 'Hellix',
            textTheme: const TextTheme(
              displayLarge: TextStyle(
                fontSize: 96,
                fontWeight: FontWeight.bold,
              ),
              displayMedium: TextStyle(
                fontSize: 60,
                fontWeight: FontWeight.bold,
              ),
              displaySmall: TextStyle(
                fontSize: 48,
                fontWeight: FontWeight.bold,
              ),
              headlineMedium: TextStyle(
                fontSize: 34,
                fontWeight: FontWeight.bold,
              ),
              headlineSmall: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
              titleLarge: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
              titleMedium: TextStyle(fontSize: 16, fontWeight: FontWeight.w400),
              titleSmall: TextStyle(fontSize: 14, fontWeight: FontWeight.w500),
              bodyLarge: TextStyle(fontSize: 16),
              bodyMedium: TextStyle(fontSize: 14),
              bodySmall: TextStyle(fontSize: 12),
              labelLarge: TextStyle(fontSize: 14, fontWeight: FontWeight.w600),
              labelSmall: TextStyle(fontSize: 10),
            ),
          ),
          debugShowCheckedModeBanner: false,
          title: AppStrings.appName,
          routerConfig: AppRouter.router,
        ),
      ),
    );
  }
}
