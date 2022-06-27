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
      body: ListView.builder(itemBuilder: (context, i){
        return UserTile(githubUserState.elementAt(i).toString());
      },
      itemCount: githubUserState.length// githubUserState.length,
      ),
    );
  }
}
