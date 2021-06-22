
import 'package:another_flushbar/flushbar_helper.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl_phone_number_input/intl_phone_number_input.dart';
import 'package:domain_design_pattern_flutter/application/sign_in_user/sign_user_bloc.dart';
import 'package:domain_design_pattern_flutter/main.dart';
 import 'package:domain_design_pattern_flutter/presentaion/home_page/home_page.dart';
import 'package:domain_design_pattern_flutter/presentaion/register/register_page.dart';
import 'package:domain_design_pattern_flutter/presentaion/splash/splash.dart';


class LoginForm extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocConsumer<SignUserBloc, SignUserState>(
      listener: (context, state) {
        state.authFailureOrSuccessOption.fold(
              () {},
              (either) => either.fold(
                (failure) {
                  Navigator.pop(context);
              FlushbarHelper.createError(
                message: failure.map(
                  apiFailureMsg: (msg) => msg.failureMsg,
                  unExpectedAuthFailure: (msg)=>msg.failureMsg,
                ),
              ).show(context);
            },
                (_) {

              Navigator.of(context).pushReplacement(MaterialPageRoute(builder:(context)=>MyApp()));
            },
          ),
        );
        if( state.isSubmitting){
          //SharedWidgets.loading(context);
          showDialog(context: context, builder: (context)=>AlertDialog(
            backgroundColor: Colors.transparent,
            elevation: 0,
            content: Center(child: CircularProgressIndicator(),),
          ));
        }
      },
      builder: (context, state) {
        return
          Container(
            height: MediaQuery.of(context).size.height,
            width:MediaQuery.of(context).size.width ,

            color: Color.fromRGBO(255, 228, 91, 1),

            child: Form(
              autovalidate: state.showErrorMessages,

              child: ListView(
                //padding: const EdgeInsets.all(8),
                children: [
                  Container(
                    decoration: new BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.vertical(
                          bottom: Radius.elliptical(
                              MediaQuery.of(context).size.width*2,MediaQuery.of(context).size.height/4 )),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(48.0),
                      child: Image.asset("assets/images/logo.png",
                        height:50,

                      ),
                    ),
                  ),
                  const SizedBox(height: 48),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: TextFormField(
                      decoration: const InputDecoration(
                          prefixIcon: Icon(Icons.alternate_email_outlined,color: Colors.black87,),
                          hintText: 'User Name  ',
                         labelText: 'User Name  ',
                      ),
                      autocorrect: false,
                      onChanged: (value) => context
                          .read<SignUserBloc>()
                          .add(SignUserEvent.userNameChanged(value)),
                      validator: (_) => context
                          .read<SignUserBloc>()
                          .state
                          .userName
                          .value
                          .fold(
                            (f) => f.maybeMap(
                          invalidUserName: (e) => e.value,
                          orElse: () => null,
                        ),
                            (_) => null,
                      ),
                    ),
                  ),
                  const SizedBox(height: 8),


                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: TextFormField(
                      decoration: const InputDecoration(
                          prefixIcon: Icon(Icons.lock,color: Colors.black87,),
                          hintText: 'Password',
                         labelText: 'Password',
                      ),
                      autocorrect: false,
                      obscureText: true,
                      onChanged: (value) => context
                          .read<SignUserBloc>()
                          .add(SignUserEvent.passwordChanged(value)),
                      validator: (_) =>
                          context.read<SignUserBloc>().state.password.value.fold(
                                (f) => f.maybeMap(
                              shortPassword: (_) => 'Short Password',
                              orElse: () => null,
                            ),
                                (_) => null,
                          ),
                    ),
                  ),

                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: RichText(
                      textAlign:TextAlign.right,

                      text: TextSpan(
                        text: 'Forget your password?',
                        style: TextStyle(color: Colors.grey,fontSize: 13),
                        children: <TextSpan>[
                          TextSpan(
                              text: ' Reset Password',
                              style: TextStyle(color: Colors.blue),
                              recognizer: TapGestureRecognizer()
                                ..onTap = () {
                               //   Navigator.of(context).push(MaterialPageRoute(builder: (context)=>ResetPassword()));

                                }),
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(height: 48),
                  RichText(
                    textAlign:TextAlign.center,
                    text: TextSpan(
                      text: ' Do not have account yet? ',
                      style: TextStyle(color: Colors.grey),
                      children: <TextSpan>[
                        TextSpan(
                            text: 'Create new account',
                            style: TextStyle(color: Colors.blue),
                            recognizer: TapGestureRecognizer()
                              ..onTap = () {
                                Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context)=>RegisterPage()));

                              }),
                      ],
                    ),
                  ),
                  const SizedBox(height: 24),

                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: ElevatedButton(
                      onPressed: () {
                        context.read<SignUserBloc>().add(
                          const SignUserEvent
                              .signInWithEmailAndPasswordPressed(),
                        );
                      },
                      child: const Text('Login'),
                    ),
                  ),

                  if (state.isSubmitting) ...[
                    const SizedBox(height: 8),
                   // Center(child: const CircularProgressIndicator(value: null)),
                  ]
                ],
              ),

            ),
          );
      },
    );
  }
}