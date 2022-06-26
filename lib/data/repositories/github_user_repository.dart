
import 'package:flutter_clean_architecture_bloc/data/repositories/common/github_sort.dart';

import '../../domain/entities/github_user.dart';
import '../source/github_remote_source.dart';
import 'common/github_order.dart';

abstract class GithubUserRepository{
  Future<List<GithubUser>> getGithubUsers(
      String keyWord,
      { GithubOrder order =  GithubOrder.DESC,
        GithubSort? sort = null,
        int perPage = 30,
        int page = 1
  });
}

class GithubItemRepositoryImpl extends GithubUserRepository{
  GithubItemRepositoryImpl(this.githubItemSource);

  final GithubUserSource githubItemSource;

  /// converts model into entity
  @override
  Future<List<GithubUser>> getGithubUsers(String keyword, {GithubOrder order = GithubOrder.DESC, GithubSort? sort = null, int perPage = 30, int page = 1}) async {
    final githubUserModels = await githubItemSource.requestUsers(keyword, order = order, sort = sort, perPage = perPage, page = page);
    return githubUserModels.map((e) => e.toEntity()).toList();
  }
}


