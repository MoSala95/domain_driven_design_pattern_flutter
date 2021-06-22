import 'package:dartz/dartz.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';
import 'package:intl_phone_number_input/intl_phone_number_input.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:domain_design_pattern_flutter/domain/auth/I_auth_facade.dart';
import 'package:domain_design_pattern_flutter/domain/auth/auth_failures.dart';
import 'package:domain_design_pattern_flutter/domain/auth/value_objects.dart';
import 'package:http/http.dart' as http;
import 'package:domain_design_pattern_flutter/infrastructure/auth/models/user_with_token.dart';
import 'package:domain_design_pattern_flutter/presentaion/shared_widgets/shared_widgets.dart';
import 'dart:convert';

import 'api_routes.dart';


class UserAuthFacade implements AuthFacade {

  @override
  Future<Either<AuthFailures, Unit>> registerWithEmailAndPassword({
    required FullName fullName,
    required Password password,
    required UserName userName,
    }) async {
    final fullNameStr = fullName.getOrCrash();
    final userNameStr = userName.getOrCrash();

    final passwordStr = password.getOrCrash();

      var url = Uri.parse(ApiRoutes.register);
      print("start register");
      try {
      final http.Response response=  await http
            .post(url,
            headers: {
              "Content-Type": "application/json",
              "Accept": "application/json"
            },
            body: json.encode({
              "username": userNameStr,
              "full_name":fullNameStr,

              "password": passwordStr,
              "type":"customer"
            }));

          Map<String, dynamic> body = json.decode(response.body);

          print("login body " + body.toString());
          if (response.statusCode == 201) {
            UserModelWithToken userModelWithToken = UserModelWithToken.fromJson(body["payload"]);
             saveUserToSharedPreferences(userModelWithToken);
             print("user login success");
            return right(unit);
          } else {
            return left(const AuthFailures.apiFailureMsg("serever error"));
          }

      } catch (e) {
        print(e.toString());
        return left(const AuthFailures.unExpectedAuthFailure("serever error"));
      }

  }

  @override
  Future<Either<AuthFailures, Unit>> signInWithUserNameAndPassword({
    required UserName userName,
    required Password password,
  }) async {
    final userNameStr = userName.getOrCrash();
    final passwordStr = password.getOrCrash();
      var url = Uri.parse(ApiRoutes.login_with_userName);


    print("start login");
    try {
      final http.Response response=  await http
          .post(url,
          headers: {
            "Content-Type": "application/json",
            "Accept": "application/json"
          },
          body: json.encode({
            "username": userNameStr,
            "password": passwordStr,
          }));

      Map<String, dynamic> body = json.decode(response.body);

      print("login body " + body.toString());
      if (response.statusCode == 200) {
        UserModelWithToken userModelWithToken = UserModelWithToken.fromJson(body["user"]);
        saveUserToSharedPreferences(userModelWithToken);

        print("user login success");
        return right(unit);
      } else {
        return left(const AuthFailures.apiFailureMsg("serever error"));
      }

    } catch (e) {
      print(e.toString());
      return left(const AuthFailures.unExpectedAuthFailure("serever error"));
    }
  }

  @override
  Future<Option<UserModelWithToken>> getSignedInUser() async{
    SharedPreferences prefs = await SharedPreferences.getInstance();
    if(prefs.containsKey("userToken")&&prefs.containsKey("userId")){
      String userToken = prefs.getString("userToken")!;
      String userId = prefs.getString("userId")!;
      UserModelWithToken userModelWithToken=UserModelWithToken(accessToken: userToken,userId: userId);

      return some(userModelWithToken);
    }else
      return none();

  }

  @override
  Future<void> signOut() async{
    SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.clear();
  }
  void saveUserToSharedPreferences(UserModelWithToken userModelWithToken) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    prefs.setString("userToken", userModelWithToken.accessToken!);
    prefs.setString("userId", userModelWithToken.userId!);

  }

}
