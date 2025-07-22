import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:webcastle/core/network/dio_exception.dart';
import 'login_event.dart';
import 'login_state.dart';
import '../../domain/usecases/login_usecase.dart';
import '../../../../core/utils/toast_helper.dart';
import '../../../../core/utils/storage_helper.dart';

class LoginBloc extends Bloc<LoginEvent, LoginState> {
  final LoginUseCase loginUseCase;

  LoginBloc(this.loginUseCase) : super(const LoginState.initial()) {
    on<LoginEvent>(_onLogin);
  }

  Future<void> _onLogin(LoginEvent event, Emitter<LoginState> emit) async {
    emit(const LoginState.loading());

    try {
      final result = await loginUseCase(event.email, event.password);
      await SecureStorageHelper.saveToken(result.data.accessToken);
      emit(LoginState.success(result));
    } on AppError catch (e) {
      showToast(e.message);
      emit(LoginState.error(e.message));
    } catch (e) {
      final errorMsg = "Something went wrong";
      showToast(errorMsg);
      emit(LoginState.error(errorMsg));
    }
  }
}
