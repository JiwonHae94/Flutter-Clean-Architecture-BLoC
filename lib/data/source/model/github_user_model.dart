import 'package:json_annotation/json_annotation.dart';

@JsonSerializable()
class GithubUserModel{
  GithubUserModel(this.id, this.name, this.avartarUrl, this.login);

  factory GithubUserModel.fromJson(Map<String, dynamic> json) => _$GithubUserModelFromJson(json);

  final int id;
  final String name;
  final String login;
  final String avartarUrl;

}