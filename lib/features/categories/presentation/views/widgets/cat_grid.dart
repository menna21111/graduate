import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:graduation/core/widgets/custom_error_msg.dart';
import 'package:graduation/features/categories/presentation/manger/categories_cubit/categories_cubit_cubit.dart';
import 'package:graduation/features/categories/presentation/views/widgets/customcard.dart';

class CategoriesGrid extends StatelessWidget {
  CategoriesGrid({Key? key})
      : super(key: key);

  
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CategoriesCubitCubit, CategoriesCubitState>(
      builder: (context, state) {
        if (state is CategoriesCubitSuccess) {
          return Expanded(
            child: Padding(
              padding: const EdgeInsets.only(left: 11, right: 17),
              child: GridView.builder(
                physics: const BouncingScrollPhysics(),
                itemCount: state.categorieslist.length,
                clipBehavior: Clip.none,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  childAspectRatio: (MediaQuery.of(context).size.width * .431) /
                      (MediaQuery.of(context).size.height * .253),
                  crossAxisCount: 2,
                  crossAxisSpacing: 22,
                  mainAxisSpacing: 15,
                ),
                itemBuilder: (context, index) {
                  return CustomCard(
                    imglink:// 'https://upload.wikimedia.org/wikipedia/commons/thumb/e/e3/Kheops-Pyramid.jpg/1024px-Kheops-Pyramid.jpg',
                     'assets/img/categories/${state.categorieslist[index].imageCover!}',
                   //state.categorieslist[index].imageCover!,
                    text: state.categorieslist[index].name!,
                    onTap: () => GoRouter.of(context).push('/LandmarksBody',extra:state.categorieslist[index]),
                  );
                },
              ),
            ),
          );
        } else if (state is CategoriesCubitFailure) {
          return CustomErrorWidget(errMessage: state.errMessage);
        } else {
          return Center(child: CircularProgressIndicator());
        }
      },
    );
  }
}
