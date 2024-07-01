import 'package:flutter/material.dart';

import 'package:sizer/sizer.dart';

import 'src/features/Pages/Home/pages/home_page.dart';
import 'src/features/Pages/Search/Pages/find_search_page.dart';
import 'src/features/Pages/splash_screen/pages/splash_screen_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        return Sizer(
          builder: (context, orientation, deviceType) {
            return const MaterialApp(
              debugShowCheckedModeBanner: false,
              home: HomePage(),
            );
          },
        );
      },
    );
  }
}
