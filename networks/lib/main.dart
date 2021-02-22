import 'package:flutter/material.dart';
import 'package:networks/serialization_json.dart';
// import 'package:networks/http_request.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      // home: HttpRequest(),
      home: Serialization(),
    );
  }
}
