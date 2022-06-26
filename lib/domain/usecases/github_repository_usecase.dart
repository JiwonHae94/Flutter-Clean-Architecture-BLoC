
import '../../data/repositories/github_user_repository.dart';
import '../entities/github_repository.dart';

class GithubRepsitoryUsecase {
  const GithubRepsitoryUsecase(this.repository);

  final GithubUserRepository repository;
}