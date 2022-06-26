import 'dart:convert';

import 'package:flutter_clean_architecture_bloc/data/source/model/github_user_model.dart';

import 'package:http/http.dart' as http;

import '../repositories/common/github_order.dart';
import '../repositories/common/github_sort.dart';


class GithubUserSource{
  // TODO update target url
  static const String baseURL = "https://api.github.com/search/users";
  static const String searchApiUrl = "";

  void requestRepositories(){

  }



  Future<List<GithubUserModel>> requestUsers(
      String keyWord,
      GithubOrder order,
      GithubSort? sort,
      int pageNumber,
      int perPage
  ) async {
    // TODO add order and sort to the query
    final query = "$baseURL/q=$keyWord";
    final response = await http.get(Uri.parse(query));

    if(response.statusCode == 200){
      print("here");
    } else{
      throw Exception("failed to load github items");
    }
    return List.empty();
  }

}