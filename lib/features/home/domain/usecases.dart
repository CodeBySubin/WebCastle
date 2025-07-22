

import 'package:webcastle/features/home/domain/entities/entities.dart';
import 'package:webcastle/features/home/domain/repository/repository.dart';

class GetHome {
  final HomeRepository repository;

  GetHome(this.repository);

  Future<HomeEntity> call() async {
    return await repository.getHome();
  }
}
