import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:flutter/foundation.dart';

class RobotProvider {
  Future<List<dynamic>> getRobots() async {
    var url = Uri.https('jsonplaceholder.typicode.com', 'users');
    var response = await http.get(url).then((data) => jsonDecode(data.body));
    return response;
  }
}
