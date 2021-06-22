
 import 'package:flutter/material.dart';
 import 'package:domain_design_pattern_flutter/infrastructure/helper_api_methods/helper_api_methods.dart';
import 'package:domain_design_pattern_flutter/infrastructure/auth/models/common_data_model.dart';
 class PrivacyPolicyPage extends StatefulWidget {
  const PrivacyPolicyPage({Key? key}) : super(key: key);

  @override
  _PrivacyPolicyPageState createState() => _PrivacyPolicyPageState();
}

class _PrivacyPolicyPageState extends State<PrivacyPolicyPage> {

  late Future<CommonDataModel> futureData;
  @override
  void initState() {
    // TODO: implement initState
    futureData=fetchCommonData();
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:FutureBuilder<CommonDataModel>(
          future: futureData,
          builder: (context, AsyncSnapshot<CommonDataModel> snapshot) {
             return Padding(
              padding: const EdgeInsets.all(10.0),
              child: snapshot.data == null
                  ?Center(child: CircularProgressIndicator(),)
                  :   Center(
                 child: Text(
                    snapshot.data!.payload!.about!.privacyPolicy??"data not provided yet",
                    style: TextStyle(
                      fontSize: 18,
                    ),
                  ),

              ),
            );
          }),
    );
  }

}
