import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class HttpRequest extends StatefulWidget {
  @override
  _HttpRequest createState() => _HttpRequest();
}

class _HttpRequest extends State<HttpRequest> {
  @override
  void initState() {
    super.initState();
    loadData();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Network'),
        centerTitle: true,
      ),
    );
  }
}

Future<http.Response> getData() async {
  const url = 'https://about.google/static/data/locations.json';
  return await http.get(url);
}

void loadData() {
  getData().then((response) {
    if (response.statusCode == 200) {
      print(response.body);
    } else {
      print(response.statusCode);
    }
  }).catchError((error) => debugPrint(error.toString()));
}
