import 'package:json_annotation/json_annotation.dart';

import '../../../domain/entities/github_user.dart';
part 'github_user_model.g.dart';

@JsonSerializable()
class GithubUserModel{
  GithubUserModel(this.id, this.avartarUrl, this.login);

  factory GithubUserModel.fromJson(Map<String, dynamic> json) => _$GithubUserModelFromJson(json);
  Map<String, dynamic> toJson() => _$GithubUserModelToJson(this);

  final int id;
  final String login;

  @JsonKey(name: "avatar_url")
  final String? avartarUrl;

  GithubUser toEntity() => GithubUser(
      id: this.id,
      login: this.login,
      avatarUrl: this.avartarUrl ?? "https://img.icons8.com/ios-filled/50/228BE6/github.png"
  );
}