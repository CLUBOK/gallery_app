import 'package:galleryapp/protocol/picture.dart';
import 'package:http/http.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';


class UnsplashClient {

  static const String BASE_URL = "https://api.unsplash.com";
  static const String API_KEY = "ab3411e4ac868c2646c0ed488dfd919ef612b04c264f3374c97fff98ed253dc9";






  static Future<List<PictureObj>>  getPictureList() async {
    List<PictureObj> listModel = [];
    Response response = await http.get(BASE_URL + "/photos/?client_id=$API_KEY");
    if(response.statusCode == 200) {
      final data = jsonDecode(response.body);
      for(var obj in data){
        PictureObj pictureObj = PictureObj.fromJson(obj);
        listModel.add(pictureObj);
      }
    }
    return listModel;
  }














}




