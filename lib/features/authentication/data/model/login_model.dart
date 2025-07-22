class LoginModel {
  final LoginData data;

  LoginModel({
    required this.data,
  });

  factory LoginModel.fromJson(Map<String, dynamic> json) {
    return LoginModel(
      data: LoginData.fromJson(json['data']),
    );
  }
}

class LoginData {
  final String accessToken;

  LoginData({required this.accessToken});

  factory LoginData.fromJson(Map<String, dynamic> json) {
    return LoginData(
      accessToken: json['access_token'],
    );
  }
}
