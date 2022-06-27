import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_clean_architecture_bloc/bloc/github_user_bloc.dart';
import 'package:flutter_clean_architecture_bloc/data/repositories/github_user_repository.dart';
import 'package:flutter_clean_architecture_bloc/domain/usecases/github_user_usecase.dart';

import '../../data/source/github_remote_source.dart';
import '../view/github_user_listview.dart';
import '../widgets/user_tile.dart';

class HomePage extends StatelessWidget{

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Github User API")),
      body: BlocProvider(
        create: (_) => GithubUserCubit(GithubUserUsecase(GithubUserRepositoryImpl(GithubUserRemoteSource())))..search("test"),
        child: const GithubUserListView()
      )
    );
  }
}