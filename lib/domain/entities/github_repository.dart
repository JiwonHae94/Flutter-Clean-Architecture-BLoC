import 'dart:ui';

class GithubRepository{
  const GithubRepository({
    required this.name,
    required this.owner,
    required this.isPrivate,
    required this.url,
    required this.starGazerCount,
    required this.topics,
    required this.description
  });

  final String name;
  final String owner;
  final bool isPrivate;
  final String description;
  final String url;
  final int starGazerCount;
  final List<String> topics;
}