import 'package:bloc/bloc.dart';
import 'package:flutter_clean_architecture_bloc/domain/entities/github_user.dart';
import 'package:flutter_clean_architecture_bloc/domain/usecases/github_user_usecase.dart';

import '../data/repositories/common/github_order.dart';
import '../data/repositories/common/github_sort.dart';

part "github_user_state.dart";

class GithubUserCubit extends Cubit<List<int>>{
  GithubUserCubit(this.githubUserUsecase) : super(List.empty());

  final GithubUserUsecase githubUserUsecase;

  Future<void> search(String keyword,{ GithubOrder order = GithubOrder.DESC, GithubSort? sort = null, int perPage = 30, int page = 1}) async{
    final users = await githubUserUsecase.call(keyword: keyword, page: page, perPage: perPage, sort: sort, order : order);
    emit([1,2,3,4,5,6,7,1,10]);
  }

}