import 'package:freezed_annotation/freezed_annotation.dart';
import '../../data/model/login_model.dart';

part 'login_state.freezed.dart';

@freezed
abstract class LoginState with _$LoginState {
  const factory LoginState.initial() = Initial;
  const factory LoginState.loading() = Loading;
  const factory LoginState.success(LoginModel loginData) = Success;
  const factory LoginState.error(String message) = Error;
}
