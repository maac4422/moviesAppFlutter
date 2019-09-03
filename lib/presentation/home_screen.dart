import 'package:flutter/material.dart';
import 'package:flutter_movie/containers/active_tab.dart';
import 'package:flutter_movie/containers/movies.dart';
import 'package:flutter_movie/containers/series.dart';
import 'package:flutter_movie/keys.dart';
import 'package:flutter_movie/models/models.dart';

class HomeScreen extends StatefulWidget {
  final void Function() onInit;

  HomeScreen({@required this.onInit}) : super(key: AppKeys.homeScreen);

  @override
  HomeScreenState createState() {
    return new HomeScreenState();
  }
}

class HomeScreenState extends State<HomeScreen> {

  @override
  void initState() {
    widget.onInit();
    super.initState();
  }
  
  @override
  Widget build(BuildContext context) {
    return ActiveTab(
      builder: (BuildContext context, AppTab activeTab) {
        return Scaffold(
          appBar: AppBar(
            actions: []
          ),
          //body: activeTab == AppTab.movies ? Movies() : Series()
          body: Text("I'm Home")
        );
      },
    );
  }
}