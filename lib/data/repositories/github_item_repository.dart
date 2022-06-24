import 'package:flutter_clean_architecture_mvvm/data/source/model/github_item.dart';

import '../../domain/entities/github_repository.dart';
import '../source/github_remote_source.dart';

abstract class GithubItemRepository{
  Future<List<GithubItemModel>> getGithubItems();
}

class GithubItemRepositoryImpl extends GithubItemRepository{
  GithubItemRepositoryImpl(this.githubItemSource);

  final GithubItemSource githubItemSource;

  @override
  Future<List<GithubItemModel>> getGithubItems() async {
    final githubItems = await githubItemSource.requestUsers();


    // TODO: implement getGithubItems
    throw UnimplementedError();
  }


}


