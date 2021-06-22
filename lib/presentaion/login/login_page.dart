
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
 import 'package:domain_design_pattern_flutter/application/sign_in_user/sign_user_bloc.dart';
import 'package:domain_design_pattern_flutter/infrastructure/user_auth_facade.dart';
import 'package:domain_design_pattern_flutter/presentaion/login/login_form.dart';
import 'package:domain_design_pattern_flutter/presentaion/register/register_form.dart';


class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return   Scaffold(

      body: BlocProvider<SignUserBloc>(
          create:  (context) => SignUserBloc(UserAuthFacade()),
          child:  LoginForm()
      ),
    );
  }
}