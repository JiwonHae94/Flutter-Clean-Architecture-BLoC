import 'package:json_annotation/json_annotation.dart';

import '../../../domain/entities/github_user.dart';

@JsonSerializable()
class GithubUserModel{
  GithubUserModel(this.id, this.name, this.avartarUrl, this.login);

  factory GithubUserModel.fromJson(Map<String, dynamic> json) => _$GithubUserModelFromJson(json);

  final int id;
  final String name;
  final String login;
  final String avartarUrl;

  GithubUser toEntity() => GithubUser(
      id: this.id,
      login: this.login,
      avatarUrl: this.avartarUrl,
      name: name
  );
}