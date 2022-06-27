// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'github_user_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

GithubUserModel _$GithubUserModelFromJson(Map<String, dynamic> json) =>
    GithubUserModel(
      json['id'] as int,
      json['avatar_url'] as String?,
      json['login'] as String,
    );

Map<String, dynamic> _$GithubUserModelToJson(GithubUserModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'login': instance.login,
      'avatar_url': instance.avartarUrl,
    };
