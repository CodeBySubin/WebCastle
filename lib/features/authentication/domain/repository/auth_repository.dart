import 'package:webcastle/features/authentication/data/model/login_model.dart';

abstract class AuthRepository {
  Future<LoginModel> login(String email, String password);
}
