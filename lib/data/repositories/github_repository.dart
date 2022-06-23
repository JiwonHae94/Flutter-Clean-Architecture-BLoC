import 'package:flutter_clean_architecture_mvvm/data/source/github_remote_source.dart';
import 'package:flutter_clean_architecture_mvvm/domain/entities/github_repository.dart';
import 'package:flutter_clean_architecture_mvvm/domain/entities/github_user.dart';

abstract class GithubRepository{
  Future<List<GithubRepositoryItem>> requestRepositories();
  Future<List<GithubUser>> requestUsers();
}

class GithubRepositoryImple extends GithubRepository{
  GithubRepositoryImple({
    required this.remoteDataSource
  });

  final GithubRemoteSource remoteDataSource;

  @override
  Future<List<GithubRepositoryItem>> requestRepositories() {
    throw UnimplementedError();
  }

  @override
  Future<List<GithubUser>> requestUsers() {
    // TODO: implement requestUsers
    throw UnimplementedError();
  }

}