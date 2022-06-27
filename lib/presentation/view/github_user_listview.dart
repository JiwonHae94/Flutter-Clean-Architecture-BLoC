import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_clean_architecture_bloc/presentation/widgets/user_tile.dart';

import '../../bloc/github_user_bloc.dart';

class GithubUserListView extends StatelessWidget {
  const GithubUserListView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final cubit = context.watch<GithubUserCubit>();
    final githubUserState = cubit.state;

    return Scaffold(
      body: Column(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextField(
              onSubmitted: (value) {
                print(value);
                cubit.search(value);
              },
              decoration: InputDecoration(
                  labelText: "Search keyword",
                  hintText: "Search keyword",
                  prefixIcon: Icon(Icons.search),
                  border:
                      OutlineInputBorder(borderRadius: BorderRadius.all(Radius.circular(25.0)))),
            ),
          ),
          Expanded(
              child: ListView.builder(
            itemBuilder: (context, i) {

              if(i >= githubUserState.length){

              }


              return UserTile(githubUserState.elementAt(i));
            },
            itemCount: githubUserState.length,
          ))
        ],
      ),
    );
  }
}
