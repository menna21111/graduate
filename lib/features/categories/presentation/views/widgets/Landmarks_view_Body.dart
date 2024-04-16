import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:graduation/core/widgets/appbar.dart';
import 'package:graduation/features/categories/presentation/views/widgets/arrow.dart';
import 'package:graduation/features/categories/presentation/views/widgets/landmark_grid.dart';
import '../../../../../core/widgets/navigationpar.dart';

class LandmarksBody extends StatelessWidget {
  LandmarksBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(),
      body: Column(
        children: [
          arrow(onTap: () => GoRouter.of(context).pop('/')),
          landmarkGrid(),
        ],
      ),
      bottomNavigationBar: navgbar(),
    );
  }
}
