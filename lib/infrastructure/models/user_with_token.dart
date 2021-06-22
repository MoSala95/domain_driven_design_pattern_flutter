
class UserModelWithToken {
  final String ?accessToken;
  final String ?tokenType;
  final String ?userId;

  UserModelWithToken({
    this.accessToken,
    this.tokenType,
    this.userId,
  });

   factory UserModelWithToken.fromJson(Map<String, dynamic> json) =>
       UserModelWithToken(
        tokenType: json["token_type"] == null ? null : json["token_type"],
        accessToken: json["token"] == null
            ? null
            : "Bearer " + json["token"],
        userId:
        json["user_id"] == null ? null : json["user_id"],
      );
}
