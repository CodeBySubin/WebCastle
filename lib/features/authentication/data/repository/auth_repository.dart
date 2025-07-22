import 'package:dio/dio.dart';
import 'package:webcastle/core/network/api_client.dart';
import 'package:webcastle/core/network/api_endpoint.dart';
import 'package:webcastle/core/network/dio_exception.dart';
import 'package:webcastle/features/authentication/data/model/login_model.dart';

import 'package:webcastle/features/authentication/domain/repository/auth_repository.dart';

class AuthRepositoryImpl implements AuthRepository {
  final ApiClient apiClient;

  AuthRepositoryImpl(this.apiClient);

  @override
  Future<LoginModel> login(String email, String password) async {
    try {
      final response = await apiClient.post(
        APIEndPoints.login,
        data: {"device_token": "test_token", "device_type": "1"},
      );

      return LoginModel.fromJson(response.data);
    } on DioException catch (e) {
      throw DioExceptionHandler.handleDioError(e);
    }
  }
}
