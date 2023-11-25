


import 'package:dio/dio.dart';
import 'package:quiz4/config/get_it.dart';
import 'package:quiz4/model/model_add.dart';
import 'package:shared_preferences/shared_preferences.dart';

abstract class AddService{
  Dio dio = Dio();
  String baseURL = "";

  Question (ModelAdd Asks);
}

class AddServiceImpl extends AddService{
  @override
  Question (ModelAdd Asks)async{
    try{
      print(Asks.toJson());
      Response response = await dio.post(baseURL,data: Asks.toJson());
      if (response.statusCode==200){
        print(response.data);
    //     String token =response.data['token'];
    // storage.get<SharedPreferences>().setString('token', token);
        return true;
      }else{
        return "false";
      }
    }catch(e){
      print("object");
      throw e;
    }
  }
}

