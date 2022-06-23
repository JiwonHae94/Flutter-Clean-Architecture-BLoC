import '../../domain/entities/github_repository.dart';

abstract class RepositoryRes{
  Future<List<GithubRepositoryItem>> getRepositories();
}

