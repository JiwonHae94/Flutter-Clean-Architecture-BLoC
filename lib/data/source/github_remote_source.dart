import 'dart:convert';

import 'package:flutter_clean_architecture_bloc/data/source/model/github_user_model.dart';

import 'package:http/http.dart' as http;

import '../repositories/common/github_order.dart';
import '../repositories/common/github_sort.dart';

class GithubUserRemoteSource{
  // TODO update target url
  static const String baseURL = "https://api.github.com/search/users";
  static const String searchApiUrl = "";

  Future<List<GithubUserModel>> requestUsers(
      String keyword,
      GithubOrder order,
      GithubSort? sort,
      int pageNumber,
      int perPage
  ) async {
    // TODO add order and sort to the query
    final query = "$baseURL?q=$keyword";
    final response = await http.get(Uri.parse(query));

    if(response.statusCode == 200){
      final data = json.decode(response.body);
      return (data["items"].map<GithubUserModel>((json) => GithubUserModel.fromJson(json))).toList();
    } else if(response.statusCode == 503){
      // TODO handle service unavailable
    } else {
      // TODO handle unknown errors
    }


    print("request users ${response.statusCode}");

    // if(response.statusCode == 200){
    //   print("here");
    // } else{
    //   throw Exception("failed to load github items");
    // }
    return List.empty();
  }

}