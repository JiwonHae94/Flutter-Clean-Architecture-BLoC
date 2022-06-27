part of "github_user_bloc.dart";

class GithubUserState{
  GithubUserState({
    required this.githubUsers
  });

  factory GithubUserState.fromDefault(){
    return GithubUserState(
      githubUsers: <GithubUser>[]
    );
  }

  late List<GithubUser> githubUsers;
}