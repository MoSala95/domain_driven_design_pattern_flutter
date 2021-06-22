import 'dart:async';
import 'dart:convert';
import 'dart:io';

import 'package:http/http.dart' as http;

class UserCountryApi {
  final String url;

  UserCountryApi(this.url);

  Future<String> getData() async {
    var request = http.Request('GET', Uri.parse('http://ip-api.com/json'));
    try{

      http.StreamedResponse response = await request.send().timeout(Duration(seconds: 5));

      if (response.statusCode == 200){
        String responseStr=await response.stream.bytesToString();
        print("get country success $responseStr}");
        return (responseStr);

      }
      else{
        print("get country fails ${response.reasonPhrase}");

        return '';
      }
    }on TimeoutException catch (_) {
      // A timeout occurred.
      print("time exception");
      return "";
    } on SocketException catch (_) {
      print("socket exception");
      return "";
    }

  }

}
Future<String> getCountry() async{
  UserCountryApi n = new UserCountryApi("http://ip-api.com/json");
  var locationSTR = (await n.getData());
  if(locationSTR.isEmpty){
    return "SA";
  }else{
    var locationx = jsonDecode(locationSTR);
    return locationx["countryCode"];
  }

}