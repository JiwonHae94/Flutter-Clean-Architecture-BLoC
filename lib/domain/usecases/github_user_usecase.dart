import 'package:flutter_clean_architecture_bloc/data/repositories/github_user_repository.dart';

import '../entities/github_user.dart';

class GithubUserUsecase {
  const GithubUserUsecase(this.repository);

  final GithubItemRepositoryImpl repository;

  Future<List<GithubUser>> call(String keyword) async {
    return repository.getGithubUsers(keyword);
  }
}