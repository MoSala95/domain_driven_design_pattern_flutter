import 'dart:convert';

import 'package:shared_preferences/shared_preferences.dart';
import 'package:domain_design_pattern_flutter/infrastructure/auth/api_routes.dart';
import 'package:domain_design_pattern_flutter/infrastructure/auth/models/common_data_model.dart';
import 'package:http/http.dart' as http;
import 'package:domain_design_pattern_flutter/presentaion/shared_widgets/shared_widgets.dart';
Future<CommonDataModel> fetchCommonData() async {

  var url = Uri.parse(ApiRoutes.general);
  SharedPreferences prefs = await SharedPreferences.getInstance();
  late String userToken;
  if(prefs.containsKey("userToken")){
    userToken=prefs.getString("userToken")!;
  }

  print("start fectching");
  try {
    final http.Response response=  await http
        .get(url,
      headers: {
        "Content-Type": "application/json",
        "Accept": "application/json",
        "Authorization": "$userToken"
      },
    );

    Map<String, dynamic> body = json.decode(response.body);
    print("common data body " + body.toString());

    if (response.statusCode == 200) {
      CommonDataModel commonDataModel= CommonDataModel.fromJson(body);
      print("update accept requests success");
      return commonDataModel;
    } else {
      print("update accept requests failed");

      return CommonDataModel();
    }

  } catch (e) {
    print(e.toString());
    SharedWidgets.showToastMsg(
      "Something went wrong ,try again later", false,);
    return CommonDataModel();
  }
}
