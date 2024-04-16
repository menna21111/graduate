import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:graduation/constants.dart';
import 'package:graduation/core/utils/app_router.dart';

void main() {
  runApp(const Sawah());
}

class Sawah extends StatelessWidget {
  const Sawah({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerConfig: AppRouter.router,
      debugShowCheckedModeBanner: false,
      theme: ThemeData.light().copyWith(
          scaffoldBackgroundColor: kbackgroundcolor,
          textTheme: GoogleFonts.interTextTheme()),
    );
  }
}
