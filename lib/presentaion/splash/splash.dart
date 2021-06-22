import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:domain_design_pattern_flutter/application/auth_user/auth_bloc.dart';
 import 'package:domain_design_pattern_flutter/presentaion/home_page/home_page.dart';
import 'package:domain_design_pattern_flutter/presentaion/register/register_page.dart';
import 'package:domain_design_pattern_flutter/presentaion/shared_widgets/custom_bottom_nativgation.dart';
class SplashPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocListener<AuthBloc, AuthState>(
      listener: (context, state) {
        state.map(
          initial: (_) {},
          authenticated: (_) =>
              Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context)=>HomePage())),
          //Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context)=>CustomBottomNavigation())),

          unauthenticated: (_) =>
            Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context)=>RegisterPage()))
        ,
        );
      },
      child:  Scaffold(
        body:  Column(
      children: [
      Flexible(
      flex: 1,
        child: Row(
          children: [
            Padding(
              padding: const EdgeInsets.only(top:64.0),
              child: Image.asset("assets/images/camera.png",width: MediaQuery.of(context).size.width/3.4,
                height: MediaQuery.of(context).size.height/4,
              ),
            ),
            Spacer(),
            Padding(
              padding: const EdgeInsets.only(bottom:48.0),
              child: Image.asset("assets/images/location.png",width: MediaQuery.of(context).size.width/5,),
            ),
            Spacer(),
            Padding(
              padding: const EdgeInsets.only(top:64.0),
              child: Image.asset("assets/images/plan.png",width: MediaQuery.of(context).size.width/3.5,),
            ),

          ],
        ),
      ),

      Flexible(
        flex: 1,
        child: Padding(
          padding: const EdgeInsets.all(24.0),
          child: Image.asset("assets/images/logo.png",width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height/4,
          ),
        ),
      ),


      Flexible(
        flex: 1,
        child: Row(

          children: [
            Padding(
              padding: const EdgeInsets.only(bottom:24.0),
              child: Image.asset("assets/images/boat.png",width: MediaQuery.of(context).size.width/3.5,
                height: MediaQuery.of(context).size.height/4,
              ),
            ),
            Spacer(),
            Padding(
              padding: const EdgeInsets.only(top:64.0),
              child: Image.asset("assets/images/worldbook.png",width: MediaQuery.of(context).size.width/3.5,),
            ),
            Spacer(),
            Padding(
              padding: const EdgeInsets.only(bottom:24.0),
              child: Image.asset("assets/images/map.png",width: MediaQuery.of(context).size.width/3.5,),
            ),
          ],
        ),
      ),

      Flexible(
        flex: 1,
        child: Container(
          height: MediaQuery.of(context).size.height/4,
          width:MediaQuery.of(context).size.width ,
          margin: EdgeInsets.only(top: 8),
          decoration: new BoxDecoration(
            color: Color.fromRGBO(255, 228, 91, 1),
            borderRadius: BorderRadius.vertical(
                top: Radius.elliptical(
                  MediaQuery.of(context).size.width*2, MediaQuery.of(context).size.height/4,)),
          ),
          child: Center(child: CircularProgressIndicator()),
        ),
      ),


      ],
    ),
      ),
    );
  }
}