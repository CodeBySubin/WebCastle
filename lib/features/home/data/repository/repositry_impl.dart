import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:webcastle/core/network/api_client.dart';
import 'package:webcastle/core/network/api_endpoint.dart';
import 'package:webcastle/core/network/dio_exception.dart';
import 'package:webcastle/features/home/data/model/home_model.dart';
import 'package:webcastle/features/home/domain/entities/entities.dart';
import 'package:webcastle/features/home/domain/repository/repository.dart';

class ProfileRepositoryImpl implements HomeRepository {
  final ApiClient _apiClient;

  ProfileRepositoryImpl(this._apiClient);

  @override
  Future<HomeEntity> getHome() async {
    try {
      final response = await _apiClient.get(APIEndPoints.home);
      print(response.data['data']['home_fields']
);
      final homeData = response.data;
      final homeEntity = HomeModel.fromJson(homeData); 
      return homeEntity;
    } on DioException catch (e) {
      throw DioExceptionHandler.handleDioError(e);
    } catch (e) {
      throw Exception('Failed to fetch home data: $e');
    }
  }
}