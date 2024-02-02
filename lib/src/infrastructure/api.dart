import 'dart:convert';
import 'dart:developer';

import 'package:http/http.dart' as http;

class Api{

  final String _url = "https://gist.githubusercontent.com/JhonaCodes/d25317d8cd702be00e24601efef83622/raw/profile_jhonacode.json";

  Future<Map<String, dynamic>> getProfileData() async {

    Map<String, dynamic> parseData = {};

    try{

      final response = await http.get(Uri.parse(_url),);

      parseData =  Map<String, dynamic>.from( await jsonDecode(response.body) );

    }catch(e, stackTrace){
      log("Error - Api.getProfileData: ${e.runtimeType}", stackTrace: stackTrace);
      return {};
    }
    return parseData;

  }
  
}