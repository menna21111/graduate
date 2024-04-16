import 'package:dio/dio.dart';
import 'package:dartz/dartz.dart';
import 'package:graduation/core/errors/failures.dart';
import 'package:graduation/core/utils/api_service.dart';
import 'package:graduation/features/categories/data/model/categories_model.dart';
import 'package:graduation/features/categories/data/model/landmark_on_cat_model/landmark_on_cat_model.dart';
import 'package:graduation/features/categories/data/repos/categories_repo.dart';
import 'package:graduation/features/home/data/models/most_visited_model/most_visited_model.dart';

class CategoriesRepoImpl implements CategoriesRepo {
  final ApiService apiService;

  CategoriesRepoImpl(this.apiService);

  @override
  Future<Either<Failure, List<CategoriesModel>>> fetchCategories() async {
    try {
      var data = await apiService.get(endpoint: 'categories');
      print(data['data']['categories']);
      List<CategoriesModel> categorydata = [];
      for (var item in data['data']['categories']) {
        categorydata.add(CategoriesModel.fromJson(item));
      }
      return right(categorydata);
    } on Exception catch (e) {
      if (e is DioError) {
        return left(ServerFailure.fromDiorError(e));
      }
      return left(ServerFailure(e.toString()));
    }
  }

  @override
  Future<Either<Failure, List<LandmarkOnCatModel>>> fetchlandmarks(
      {required String categoryId}) async {
    try {
      var data = await apiService.get(
          endpoint: 'categories/$categoryId/landmarks?sort=rating');
      print(data['data']['landmarks']);

      List<LandmarkOnCatModel> landmarkdata = [];
      for (var item in data['data']['landmarks']) {
        landmarkdata.add(LandmarkOnCatModel.fromJson(item));
      }
      return right(landmarkdata);
    } on Exception catch (e) {
      if (e is DioError) {
        return left(ServerFailure.fromDiorError(e));
      }
      return left(ServerFailure(e.toString()));
    }
  }

@override
  Future<Either<Failure, List<MostVisitedModel>>> fetchmostvisited() async {
    try {
      var data = await apiService.get(
          endpoint: 'landmarks/most-visited');
      print(data['data']['landmarks']);

      List<MostVisitedModel> mostvisiteddata = [];
      for (var item in data['data']['landmarks']) {
        mostvisiteddata.add(MostVisitedModel.fromJson(item));
      }
      return right(mostvisiteddata);
    } on Exception catch (e) {
      if (e is DioError) {
        return left(ServerFailure.fromDiorError(e));
      }
      return left(ServerFailure(e.toString()));
    }
  }
}
