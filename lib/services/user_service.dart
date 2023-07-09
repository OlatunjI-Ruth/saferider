// import 'dart:convert';
//
// import 'package:saferider/model/api_list_response.dart';
// import 'package:http/http.dart' as http;
//
//
// /// We need the user_service.dart file to handle API calls to our user’s endpoint.
// ///
// class LocationList {
//
//   /// urls are always static
//   static const URL = 'http://jsonplaceholder.typicode.com/location';
//
//
//   Future<APIResponse<List<LocationList>>> getLocationList (){
//     return http.get(Uri.parse(URL)).then((value){
//       if (value.statusCode == 200){
//         final jsonData = json.decode(value.body) as List;
//         final listOflOcation = jsonData.map((data)=>LocationList.fromJson(data)).toList();
//       }
//     });
//   }
//
//
// }