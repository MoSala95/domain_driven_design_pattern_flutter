
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:domain_design_pattern_flutter/application/register_user/register_user_bloc.dart';
import 'package:domain_design_pattern_flutter/application/sign_in_user/sign_user_bloc.dart';
import 'package:domain_design_pattern_flutter/infrastructure/auth/user_auth_facade.dart';
import 'package:domain_design_pattern_flutter/presentaion/register/register_form.dart';
import 'package:domain_design_pattern_flutter/infrastructure/helper_api_methods/user_country_api.dart';

class RegisterPage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return   Scaffold(

      body: FutureBuilder<String>(
        future: getCountry(),
        builder: (context, snapshot) {
          if(!snapshot.hasData)
            return Center(child: CircularProgressIndicator(),);
          return BlocProvider<RegisterUserBloc>(
            create:  (context) => RegisterUserBloc(UserAuthFacade()),
            child:  RegisterForm(intialCountry: snapshot.data!,)
          );
        }
      ),
    );
  }
}