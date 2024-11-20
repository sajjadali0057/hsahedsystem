class UserModel {
  final String? accessToken; // Nullable if not always present
  final String? email;

  UserModel({
    required this.accessToken,
    required this.email,
  });

  factory UserModel.fromJson(Map<String, dynamic> json) {
    return UserModel(
      accessToken: json['response']?['access_token'] as String?,
      email: (json['response']?['data']?['email']) as String?,
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'access_token': accessToken,
      'email': email,
    };
  }
}
