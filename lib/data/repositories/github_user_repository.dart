
import 'package:flutter_clean_architecture_bloc/data/repositories/common/github_sort.dart';

import '../../domain/entities/github_user.dart';
import '../source/github_remote_source.dart';
import 'common/github_order.dart';

abstract class GithubUserRepository{
  Future<List<GithubUser>> getGithubUsers({required String keyword, required GithubOrder order, required GithubSort? sort, required int perPage, required int page});
}

class GithubUserRepositoryImpl extends GithubUserRepository{
  GithubUserRepositoryImpl(this.githubItemSource);

  final GithubUserSource githubItemSource;

  /// converts model into entity
  @override
  Future<List<GithubUser>> getGithubUsers({required String keyword, required GithubOrder order, required GithubSort? sort, required int perPage, required int page}) async {
    final githubUserModels = await githubItemSource.requestUsers(keyword, order = order, sort = sort, perPage = perPage, page = page);
    return githubUserModels.map((e) => e.toEntity()).toList();
  }
}


