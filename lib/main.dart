import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:domain_design_pattern_flutter/application/auth_user/auth_bloc.dart';
import 'package:domain_design_pattern_flutter/infrastructure/user_auth_facade.dart';
import 'package:domain_design_pattern_flutter/presentaion/App.dart';
 import 'package:domain_design_pattern_flutter/presentaion/splash/splash.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<AuthBloc>(
          create: (context) =>
          AuthBloc(UserAuthFacade())..add(const AuthEvent.authCheckRequested()),
        )
      ],
      child: MaterialApp(
        title: 'Domain Driven Design',
          theme: ThemeData(
            colorScheme: ColorScheme.light(),
            fontFamily: "Tajawal",

            textButtonTheme: TextButtonThemeData(
              style: TextButton.styleFrom(
                primary: Colors.white,
              ),
            ),
              primaryIconTheme: IconThemeData(color: Colors.black),
            iconTheme: IconThemeData(color: Colors.black87),
            accentIconTheme: IconThemeData(color: Colors.black87),

            elevatedButtonTheme: ElevatedButtonThemeData(
              style: TextButton.styleFrom(
                  backgroundColor: Colors.cyan,
                  padding: EdgeInsets.symmetric(vertical: 8, horizontal: 8),

                  textStyle: TextStyle(
                      color: Colors.white,
                      wordSpacing: 2,
                      fontFamily: "Tajawal",
                      letterSpacing: 2)
              ),
            ),
            outlinedButtonTheme: OutlinedButtonThemeData(
              style: OutlinedButton.styleFrom(
                primary: Colors.black,
                backgroundColor: Colors.green,
              ),
            ),

            accentColor: Colors.blueAccent,
            appBarTheme: AppBarTheme(
              color: Color.fromRGBO(255, 228, 91, 1),
              titleTextStyle: TextStyle(color: Colors.black),
            ),
            floatingActionButtonTheme: FloatingActionButtonThemeData(
              backgroundColor: Colors.blue[900],
            ),

            inputDecorationTheme: InputDecorationTheme(
              focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.black, ),
                borderRadius: BorderRadius.circular(8),
              ),
                border: OutlineInputBorder(

                  borderRadius: BorderRadius.circular(8),

                  borderSide: BorderSide(
                    color: Colors.grey,
                  ),),

            ),
            bottomNavigationBarTheme: BottomNavigationBarThemeData(
                type: BottomNavigationBarType.fixed,
                backgroundColor: Color.fromRGBO(255, 228, 91, 1),
                //elevation: 10,
                selectedLabelStyle: TextStyle(
                  color: Colors.black87,fontFamily: "Tajawal",),
                unselectedLabelStyle: TextStyle(
                  color:Colors.black54,fontFamily: "Tajawal", ),
                selectedItemColor: Colors.black87,
                unselectedItemColor: Colors.black54,
                showUnselectedLabels: true,
                selectedIconTheme: IconThemeData(color: Colors.black87),
                unselectedIconTheme: IconThemeData(color: Colors.black54)
            ),
          ),
        home: SplashPage(),
      ),
    );
  }
}


