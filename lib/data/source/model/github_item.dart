import 'package:json_annotation/json_annotation.dart';

part "github_item.g.dart";

@JsonSerializable()
class GithubItemModel{
  GithubItemModel(this.id, this.name);

  factory GithubItemModel.fromJson(Map<String, dynamic> json) => _$GithubItemModelFromJson(json);

  final int id;
  final String name;
}