import 'package:flutter/material.dart';

class UserTile extends StatelessWidget {
  UserTile(this.dummyData);

  final String dummyData;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 10.0),
      child: Column(
        children: [
          ListTile(
            leading: Hero(
              tag: dummyData,
              child: CircleAvatar(
                backgroundImage: NetworkImage(dummyData),
              ),
            ),
            title: Text(dummyData),
            subtitle: Text(dummyData)
          ),
          Divider(
            thickness: 2.0,
          ),
        ],
      ),
    );
  }
}
