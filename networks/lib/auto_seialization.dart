// import 'dart:convert';
// import 'package:flutter/material.dart';
// import 'package:http/http.dart' as http;
// import 'package:json_annotation/json_annotation.dart';
// import 'package:json_serializable/builder.dart';
// part 'offices.g.dart';

// @JsonSerializable()
// class OfficesList {
//   List<Office> offices;
//   OfficesList({this.offices});

//   factory OfficesList.fromJson(Map<String, dynamic> json) =>
//       _$OfficesListFromJson(json);
//   Map<String, dynamic> toJson() => _$OfficesListFromJson(this);
// }

// @JsonSerializable()
// class Office {
//   @JsonKey()
//   final String name;
//   final String address;
//   final String image;

//   Office({this.name, this.address, this.image});

//   factory OfficesList.fromJson(Map<String, dynamic> json) =>
//       _$OfficesListFromJson(json);
//   Map<String, dynamic> toJson() => _$OfficesListFromJson(this);
// }

// Future<OfficesList> getOfficesList() async {
//   const url = 'https://about.google/static/data/locations.json';

//   final response = await http.get(url);

//   if (response.statusCode == 200) {
//     return OfficesList.fromJson(json.decode(response.body));
//   } else {
//     throw Exception('Error: ${response.reasonPhrase}');
//   }
// }

// /////////////////

// class Serialization extends StatefulWidget {
//   @override
//   _SerializationState createState() => _SerializationState();
// }

// class _SerializationState extends State<Serialization> {
//   Future<OfficesList> officesList;
//   @override
//   void initState() {
//     super.initState();
//     officesList = getOfficesList();
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Manual JSON Serialization'),
//         centerTitle: true,
//       ),
//       body: FutureBuilder<OfficesList>(
//         future: officesList,
//         builder: (context, snapshot) {
//           if (snapshot.hasData) {
//             return ListView.builder(
//                 itemCount: snapshot.data.offices.length,
//                 itemBuilder: (context, index) {
//                   return Card(
//                     child: ListTile(
//                       title: Text('${snapshot.data.offices[index].name}'),
//                       subtitle: Text('${snapshot.data.offices[index].address}'),
//                       leading: Image.network(
//                           '${snapshot.data.offices[index].image}'),
//                       isThreeLine: true,
//                     ),
//                   );
//                 });
//           } else if (snapshot.hasError) {
//             return Text('Error');
//           }
//           return Center(
//             child: CircularProgressIndicator(),
//           );
//         },
//       ),
//     );
//   }
// }
