import 'package:freezed_annotation/freezed_annotation.dart';
import '../../domain/entities/entities.dart';

part 'home_state.freezed.dart';

@freezed
class HomeState with _$HomeState {
  const factory HomeState.initial() = Initial;
  const factory HomeState.loading() = Loading;
  const factory HomeState.loaded(HomeEntity home) = Loaded;
  const factory HomeState.error(String message) = Error;
}
