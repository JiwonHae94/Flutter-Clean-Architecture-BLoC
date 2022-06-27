import 'package:flutter_clean_architecture_bloc/data/repositories/github_user_repository.dart';

import '../../data/repositories/common/github_order.dart';
import '../../data/repositories/common/github_sort.dart';
import '../entities/github_user.dart';

class GithubUserUsecase {
  const GithubUserUsecase(this.repository);

  final GithubUserRepositoryImpl repository;

  Future<List<GithubUser>> call({required String keyword, required GithubOrder order, required GithubSort? sort, required int perPage, required int page}) async {
    return repository.getGithubUsers(keyword : keyword, order:order, sort:sort, perPage: perPage, page:page);
  }
}