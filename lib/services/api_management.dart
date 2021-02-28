import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:pinterest_clone/constant/url_string.dart';
import 'package:pinterest_clone/models/models.dart';

class API_Manager {
  Future<NewsModel> getImage() async {
    var client = http.Client();
    var model = null;

    try {
      var response = await client.get(Strings.image_url);
      if (response.statusCode == 200) {
        var jsonString = response.body;
        var jsonMap = json.decode(jsonString);

        model = NewsModel.fromJson(jsonMap);
      }
    } catch (Exception) {
      return model;
    }
    return model;
  }
}
