import 'package:flutter/material.dart';
import 'package:flutter_clean_architecture_bloc/domain/entities/github_user.dart';

class UserTile extends StatelessWidget {
  UserTile(this.user);

  final GithubUser user;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 10.0),
      child: Column(
        children: [
          ListTile(
            leading: Hero(
              tag: user.id,
              child: CircleAvatar(
                backgroundImage: NetworkImage(user.avatarUrl),
              ),
            ),
            title: Text(user.login),
            subtitle: Text("github user")
          ),
          Divider(
            thickness: 2.0,
          ),
        ],
      ),
    );
  }
}
