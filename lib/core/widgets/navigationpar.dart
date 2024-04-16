import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:graduation/constants.dart';

class navgbar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      backgroundColor: abarcolor,
      onTap: (index) {},
      items: [
        BottomNavigationBarItem(
          icon: GestureDetector(
              onTap: () => GoRouter.of(context).push('/CategoriesView'),
              child: Icon(Icons.vpn_key)),
          label: 'Key',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.home),
          label: 'Home',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.camera),
          label: 'Camera',
        ),
      ],
    );
  }
}
