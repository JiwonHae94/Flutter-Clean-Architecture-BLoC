import 'dart:ffi';
import 'dart:ui';

class GithubUser{
  const GithubUser({
    required this.id,
    required this.login,
    required this.avatarUrl,
    required this.name,
    required this.url
  });

  final String login;
  final Int id;
  final String avatarUrl;
  final String name;
  final String url;

}