import 'package:go_router/go_router.dart';
import 'package:graduation/features/categories/data/model/categories_model.dart';
import 'package:graduation/features/categories/data/model/landmark_on_cat_model/landmark_on_cat_model.dart';
import 'package:graduation/features/categories/presentation/views/Landmarks_view.dart';
import 'package:graduation/features/categories/presentation/views/categories_view.dart';
import 'package:graduation/features/categories/presentation/views/info_view.dart';
import 'package:graduation/features/home/data/models/most_visited_model/most_visited_model.dart';
import 'package:graduation/features/home/pres/views/homeview.dart';

abstract class AppRouter {
  static final GoRouter router = GoRouter(
    routes: <RouteBase>[
      GoRoute(path: '/', builder: (context, state) =>  homepage()),
      GoRoute(
          path: '/CategoriesView',
          builder: (context, state) => const CategoriesView()),
      GoRoute(
          path: '/LandmarksBody',
          builder: (context, state) => Landmarks_view(
                categorymodel: state.extra as CategoriesModel,
              )),
      GoRoute(
          path: '/Information',
          builder: (context, state) =>
              Infoview(landmaroncatkmodel: state.extra as LandmarkOnCatModel,)),
      GoRoute(
          path: '/mostvisitedInformation',
          builder: (context, state) =>
              Infoview(mostVisitedModel: state.extra as MostVisitedModel,)),        
    ],
  );
}
