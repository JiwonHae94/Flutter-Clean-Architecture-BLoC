
import 'package:flutter_clean_architecture_bloc/data/repositories/common/github_sort.dart';

import '../../domain/entities/github_repository.dart';
import '../source/github_remote_source.dart';
import '../source/model/github_user_model.dart';
import 'common/github_order.dart';

abstract class GithubUserRepository{
  Future<List<GithubUserModel>> getGithubUsers(
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

  @override
  Future<List<GithubUserModel>> getGithubUsers(String keyWord, {GithubOrder order = GithubOrder.DESC, GithubSort? sort = null, int perPage = 30, int page = 1}) {
    return githubItemSource.requestUsers(
      keyWord,
      order = order,
      sort = sort,
      perPage = perPage,
      page = page
    );
  }
}


