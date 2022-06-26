import 'package:flutter/material.dart';

import '../widgets/user_tile.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<String> dummies = ["one", "two", "three"];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Github User Search"),
      ),
      body: SafeArea(
        child : ListView.builder(itemBuilder: (context, index){
          return UserTile(dummies[index]);
        })
      ),
    );
  }
}