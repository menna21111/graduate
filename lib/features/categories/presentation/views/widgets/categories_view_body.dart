import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:graduation/features/categories/presentation/views/widgets/arrow.dart';
import 'package:graduation/features/categories/presentation/views/widgets/cat_grid.dart';
import '../../../../../core/widgets/appbar.dart';
import '../../../../../core/widgets/navigationpar.dart';

class CategoriesViewBody extends StatelessWidget {
  const CategoriesViewBody({Key? key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(),
      body: Column(
        children: [
          arrow(
            onTap: () => GoRouter.of(context).pop('/'),
          ),
          CategoriesGrid(),
        ],
      ),
      bottomNavigationBar: navgbar(),
    );
  }
}
