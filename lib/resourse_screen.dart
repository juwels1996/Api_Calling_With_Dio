import 'package:dio/dio.dart';
import 'package:dio_with_api/model/resourse.dart';
import 'package:flutter/material.dart';

import 'http_services.dart';
import 'model/list_resourse_response.dart';
import 'model/list_user_response.dart';
import 'model/user.dart';


class ListResourseScreen extends StatefulWidget {
  @override
  _ListResourseScreenState createState() => _ListResourseScreenState();
}

class _ListResourseScreenState extends State<ListResourseScreen> {
  bool isLoading = false;

  Httpervice ?http;

  ListResourseResponse ?listResourseResponse;

  List<Resourse> users=[];

  Future getListUser() async {
    Response response;
    try {
      isLoading = true;

      response = await http!.getRequest("/api/unknown");

      isLoading = false;

      if (response.statusCode == 200) {
        print("response work");
        setState(() {
          listResourseResponse=ListResourseResponse.fromJson(response.data);
          users=listResourseResponse!.users;

        });
      } else {
        print("There is some problem status code not 200");
      }
    } on Exception catch (e) {
      isLoading = false;
      print(e);
    }
  }

  @override
  void initState() {
    http = Httpervice();
    getListUser();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Get List user"),
      ),
      body: isLoading
          ? Center(child: CircularProgressIndicator())
          : users != null
          ? ListView.builder(
        itemBuilder: (context, index) {
          final user = users[index];
          return ListTile(
            title: Text(user.name),
            subtitle: Text(user.pantone_value),
            trailing: Text(user.color),
            leading: Text("${user.year}"),
          );
        },
        itemCount: users.length,
      )
          : Center(
        child: Text("No User Object"),
      ),
    );
  }
}