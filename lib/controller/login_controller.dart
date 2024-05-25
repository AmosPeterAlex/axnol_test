import 'dart:convert';
import 'package:axnol_machine_test/model/responsemodel.dart';
import 'package:http/http.dart' as http;

class LoginController {
  Model model = Model();
  final String apiUrl = "http://axnoldigitalsolutions.in/Training/api/login";

  onLogin({required String name, required String pass}) async {
    final response = await http.post(Uri.parse(apiUrl), body: {
      'email': name,
      'password': pass,
    });

    if (response.statusCode == 200) {
      var data = response.body;
      model = Model.fromJson(jsonDecode(data));
      return jsonDecode(response.body);
    } else {
      throw Exception('Failed to post data to the API');
    }
  }
}
