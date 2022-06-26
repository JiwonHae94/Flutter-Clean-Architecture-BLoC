import 'dart:ffi';

class GithubUser {
  const GithubUser({
    required this.id,
    required this.login,
    required this.avatarUrl,
    required this.name,
  });

  final String login;
  final int id;
  final String avatarUrl;
  final String name;

}