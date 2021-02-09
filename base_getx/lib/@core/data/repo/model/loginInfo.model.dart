class LoginInfoModel {
  String accessToken;
  String tokenType;
  String expiresAt;
  int loginType;
  String email;
  String firebaseUid;

  LoginInfoModel({this.accessToken, this.tokenType, this.expiresAt});

  factory LoginInfoModel.fromMap(Map<String, dynamic> map) => LoginInfoModel(
        accessToken: map['access_token'] as String,
        tokenType: map['token_type'] as String,
        expiresAt: map['expires_at'] as String,
      );

  Map<String, dynamic> toMap() => {
        'accessToken': this.accessToken,
        'tokenType': this.tokenType,
        'expiresAt': this.expiresAt,
      };
}
