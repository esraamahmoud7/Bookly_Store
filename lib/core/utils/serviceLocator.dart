import 'package:booklt_store/core/utils/api_service.dart';
import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';

import '../../Features/Home/Data/Repo/home_Repo_implementation.dart';

final getIt = GetIt.instance;

void setup() {
  // singleton for APIService
  getIt.registerSingleton<ApiServices>(ApiServices(Dio()));
  // singleton for HomeRepoImp
  getIt.registerSingleton<HomeRepoImp>(
      HomeRepoImp(
        getIt.get<ApiServices>()
      )
  );
}