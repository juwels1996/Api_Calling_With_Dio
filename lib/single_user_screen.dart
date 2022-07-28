

import 'package:dio/dio.dart';
import 'package:dio_with_api/http_services.dart';
import 'package:dio_with_api/model/single_user_response.dart';
import 'package:flutter/material.dart';

import 'model/user.dart';
class SingleUserScreen extends StatefulWidget {

  @override
  _SingleUserScreenState createState() => _SingleUserScreenState();
}

class _SingleUserScreenState extends State<SingleUserScreen> {
  Httpervice ?http;
  SingleUserResponse ?singleUserResponse;
  User ?user;
  bool isLoading=false;

  Future getUser()async{

    Response response;
    try {
      isLoading=true;
      response=await http!.getRequest("/api/users/2");

      isLoading=false;
      if(response.statusCode==200){
        setState(() {
          singleUserResponse=SingleUserResponse.fromJson(response.data);

          user=singleUserResponse!.user;
        });
          }
      else{
        print("there is probblem with status code");
      }
    } on Exception catch (e) {
      print("================>$e");
    }

  }
  @override
  void initState(){
    http=Httpervice();
    getUser();
    super.initState();
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child:isLoading? CircularProgressIndicator():
        user !=null?Container(
          width: double.infinity,
          child: Container(
            color: Colors.teal,
            child: Column(
              children: [
                Image.network(user!.avatar),
                SizedBox(height: 12,),
                Text("${user?.id}"),

                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("${user?.first_name}"),
                    SizedBox(width: 5,),
                    Text("${user?.last_name}"),
                  ],
                ),
                SizedBox(height: 2,),
                Text(user!.email)
              ],
            ),
          ),
        ):Center(child:Text("no value appheread") ,)
      )

    );
  }
}
