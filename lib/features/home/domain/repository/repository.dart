

import 'package:webcastle/features/home/domain/entities/entities.dart';

abstract class HomeRepository {
  Future<HomeEntity> getHome();
}
