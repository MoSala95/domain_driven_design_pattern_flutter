import 'package:awesome_dialog/awesome_dialog.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
class SharedWidgets {
  static loading(context) {
    return showDialog(
        context: context,
        barrierDismissible: false,
        builder: (BuildContext context) {
          return Center(
           child: CircularProgressIndicator(),
            );
        });
  }

  static loadingWidget(context) {
    return Center(
      child: Container(
        height: MediaQuery.of(context).size.height*.7,
        width: MediaQuery.of(context).size.width*.7,
        child: Image.asset(
          "",
          fit: BoxFit.fill,
        ),
      ),
    );
  }
  static successOrFailDialog(context,{required bool isSuccess,required String contentMsg,required String headerMsg}){
   return AwesomeDialog(
      context: context,
      animType: AnimType.SCALE,

      dialogType:isSuccess? DialogType.SUCCES:DialogType.ERROR,
      title: headerMsg,


      headerAnimationLoop: false,
      isDense: true,

      width: MediaQuery.of(context).size.width,

      desc: headerMsg,
      body:Column(
        children: [
          Text(headerMsg,style: TextStyle(color: Colors.green,fontSize: 22,fontWeight: FontWeight.bold),),
          Padding(
            padding: const EdgeInsets.all(2.0),
            child: Text(contentMsg),
          ),
        ],
      )  ,

    )..show();
  }

  static void showSnackBar(GlobalKey<ScaffoldState> key, message) {
    final snackBar = SnackBar(
      content: Text(message),
      duration: Duration(seconds: 2),
    );
    key.currentState!.showSnackBar(snackBar);
  }

  static void showToastMsg(message, isRed) {
    Fluttertoast.showToast(
        msg: message,
        toastLength: Toast.LENGTH_LONG,
        gravity: ToastGravity.BOTTOM,
        backgroundColor: isRed == true ?  Colors.green: Colors.red ,
        textColor: Colors.white,
        fontSize: 16.0);
    // key.currentState.showSnackBar(snackBar);
  }
}
