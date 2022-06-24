import 'dart:convert';

import 'package:flutter_clean_architecture_mvvm/data/repositories/github_repository.dart';
import 'package:flutter_clean_architecture_mvvm/data/source/model/github_item.dart';

import 'package:http/http.dart' as http;


class GithubItemSource{
  // TODO update target url
  static const String baseURL = "";
  static const String searchApiUrl = "";

  void requestRepositories(){

  }

  Future<List<GithubItemModel>> requestUsers() async {
    final response = await http.get(Uri.parse(baseURL));

    //
    // if(response.statusCode == 200){
    //   return [GithubItemModel.fromJson(jsonDecode(response))];
    // } else{
    //   throw Exception("failed to load github items");
    // }

    return List.empty();
  }

}