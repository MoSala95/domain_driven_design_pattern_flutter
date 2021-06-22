
 import 'package:another_flushbar/flushbar_helper.dart';
import 'package:domain_design_pattern_flutter/presentaion/on_boarding_page/on_boarding_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
 import 'package:domain_design_pattern_flutter/application/register_user/register_user_bloc.dart';
 import 'package:domain_design_pattern_flutter/presentaion/login/login_page.dart';



class RegisterForm extends StatelessWidget {

   @override
  Widget build(BuildContext context) {
    return BlocConsumer<RegisterUserBloc, RegisterUserState>(
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

              Navigator.of(context).pushReplacement(MaterialPageRoute(builder:(context)=>OnBoardingPage()));
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
                  const SizedBox(height: 24),
                  Text("Create New Account",style: TextStyle(color: Colors.black,fontSize: 22,fontWeight: FontWeight.bold),textAlign: TextAlign.center,),
                  const SizedBox(height: 24),

                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: TextFormField(
                      decoration: const InputDecoration(
                        prefixIcon: Icon(Icons.alternate_email_outlined,color: Colors.black87,),
                        hintText: 'User Name',
                        labelText: 'User Name',
                      ),
                      autocorrect: false,
                      onChanged: (value) => context
                          .read<RegisterUserBloc>()
                          .add(RegisterUserEvent.userNameChanged(value)),
                      validator: (_) => context
                          .read<RegisterUserBloc>()
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
                        prefixIcon: Icon(Icons.person,color: Colors.black87,),
                       hintText: 'Full Name',
                        labelText: 'Full Name',
                      ),
                      autocorrect: false,
                      onChanged: (value) => context
                          .read<RegisterUserBloc>()
                          .add(RegisterUserEvent.fullNameChanged(value)),
                      validator: (_) => context
                          .read<RegisterUserBloc>()
                          .state
                          .fullName
                          .value
                          .fold(
                            (f) => f.maybeMap(
                          invalidFullName: (e) => 'Invalid Full name',
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
                          .read<RegisterUserBloc>()
                          .add(RegisterUserEvent.passwordChanged(value)),
                      validator: (_) =>
                          context.read<RegisterUserBloc>().state.password.value.fold(
                                (f) => f.maybeMap(
                              shortPassword: (_) => 'Short Password',
                              orElse: () => null,
                            ),
                                (_) => null,
                          ),
                    ),
                  ),
                  const SizedBox(height: 16),
                  RichText(
                    textAlign:TextAlign.center,
                    text: TextSpan(
                      text: ' Already have account ? ',
                      style: TextStyle(color: Colors.grey),
                      children: <TextSpan>[
                        TextSpan(
                            text: 'Sign in to existing account',
                            style: TextStyle(color: Colors.blue),
                            recognizer: TapGestureRecognizer()
                              ..onTap = () {
                                Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context)=>LoginPage()));

                              }),
                      ],
                    ),
                  ),
                  const SizedBox(height: 24),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: ElevatedButton(
                      onPressed: () {
                        context.read<RegisterUserBloc>().add(
                          const RegisterUserEvent
                              .registerWithEmailAndPasswordPressed(),
                        );
                      },
                      child: const Text('Register'),
                    ),
                  ),

                  if (state.isSubmitting) ...[

                  // const SizedBox(height: 8),
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