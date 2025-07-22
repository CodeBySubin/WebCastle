import 'package:get_it/get_it.dart';
import 'package:dio/dio.dart';

import 'package:webcastle/core/network/api_client.dart';
import 'package:webcastle/features/authentication/data/repository/auth_repository.dart';
import 'package:webcastle/features/authentication/domain/repository/auth_repository.dart';
import 'package:webcastle/features/authentication/domain/usecases/login_usecase.dart';
import 'package:webcastle/features/authentication/presentation/bloc/login_bloc.dart';

import 'package:webcastle/features/home/data/repository/repositry_impl.dart';
import 'package:webcastle/features/home/domain/repository/repository.dart';
import 'package:webcastle/features/home/presentation/bloc/home_bloc.dart';

final getIt = GetIt.instance;

void setupLocator() {
  // External
  getIt.registerLazySingleton<Dio>(() => Dio());
  getIt.registerLazySingleton<ApiClient>(() => ApiClient(getIt<Dio>()));

  // Auth
  getIt.registerLazySingleton<AuthRepository>(
    () => AuthRepositoryImpl(getIt<ApiClient>()),
  );
  getIt.registerLazySingleton<LoginUseCase>(() => LoginUseCase(getIt()));
  getIt.registerFactory<LoginBloc>(() => LoginBloc(getIt()));

  // Profile
  getIt.registerLazySingleton<HomeRepository>(
    () => ProfileRepositoryImpl(getIt<ApiClient>()),
  );
  getIt.registerFactory<HomeBloc>(() => HomeBloc(getIt()));
}
