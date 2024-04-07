import 'package:flutter/material.dart';
import 'package:graduation/features/categories/presentation/views/widgets/categories_view_body.dart';

class CategoriesView extends StatelessWidget {
  const CategoriesView({super.key});
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(body: CategoriesViewBody());
  }
}
