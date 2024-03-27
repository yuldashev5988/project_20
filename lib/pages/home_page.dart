import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:project_20/model/country_model.dart';
import 'package:project_20/services/api_service.dart';

class HomePage extends StatefulWidget {
  static const String id = "home_page";

  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  List<Country> list = [];

  getCountries () async {
    final response = await ApiService.getCountries();
    setState(() {
      for(Country c in response) {
        list.add(c);
        log("country : ${c.country}");
      }
    });
    log(list.toString());
  }

  void initState() {
    // TODO: implement initState
    super.initState();
  }

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Salom"),
        backgroundColor: Colors.blue,
        actions: [
          IconButton(
            onPressed: () {
              getCountries();
              Future.delayed(const Duration(seconds: 4));
              log("presssssssssss");
            },
            icon: Icon(Icons.add),
          )
        ],
      ),
      backgroundColor: Colors.white,
    );
  }
}
