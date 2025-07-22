import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:webcastle/core/constants/app_strings.dart';
import 'package:webcastle/core/routes/route_genarator.dart';
import 'package:webcastle/core/theme/app_theme.dart';
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
          theme: AppTheme.lightTheme,
          debugShowCheckedModeBanner: false,
          title: AppStrings.appName,
          routerConfig: AppRouter.router,
        ),
      ),
    );
  }
}
