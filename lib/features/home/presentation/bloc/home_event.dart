import 'package:freezed_annotation/freezed_annotation.dart';

part 'home_event.freezed.dart';

@freezed
class HomeEvent with _$HomeEvent {
  const factory HomeEvent.fetchHome() = FetchHome;
  const factory HomeEvent.toggleFavorite(int productId) = ToggleFavorite;
  const factory HomeEvent.incrementCount(int productId) = IncrementCount;
  const factory HomeEvent.decrementCount(int productId) = DecrementCount;
}
