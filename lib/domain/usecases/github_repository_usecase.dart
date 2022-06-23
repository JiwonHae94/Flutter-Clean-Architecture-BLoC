import '../../data/repositories/github_repository.dart';
import '../entities/github_repository.dart';

class GithubRepsitoryUsecase {
  const GithubRepsitoryUsecase(this.repository);

  final GithubRepository repository;

  Future<List<GithubRepositoryItem>> request(){
    return repository.requestRepositories();
  }

}