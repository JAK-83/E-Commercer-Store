import 'dart:convert';
import 'package:http/http.dart' as http;

class ApiClient {
  
    ///geting check method
  Future<List<dynamic>> get(String path,String url) async {
    final response = await http.get(Uri.parse("$url$path"));
    if (response.statusCode >= 200 || response.statusCode <= 300) {
      // log(response.body.toString() as num);
      print(" line 10 ${response.body.toString()}");
      return json.decode(response.body);
    } else {
      throw Exception("api error");
    } 
  }
  }