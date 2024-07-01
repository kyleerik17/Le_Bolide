import 'package:flutter/material.dart';
import 'package:le_bolide/src/features/Pages/loading%20modal/pages/search_load_page.dart';
import 'package:sizer/sizer.dart';

import '../widgets/appbar.dart';
import '../widgets/bottom.dart';
import '../widgets/marque.dart';
import '../widgets/categorie.dart';
import '../widgets/search.dart';
import '../widgets/slider.dart';
import 'Categories/pages/categorie_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const AppBarWidget(),
          Expanded(
            child: Container(
              color: const Color(0xFFF7F8F9),
              child: SingleChildScrollView(
                padding: EdgeInsets.symmetric(horizontal: 4.w),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(height: 2.h),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Expanded(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                "Nouveau chez Bolide 🔥",
                                style: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.w600,
                                  fontSize: 13.sp,
                                  fontFamily: "Poppins",
                                ),
                                textAlign: TextAlign.center,
                              ),
                              GestureDetector(
                                onTap: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) =>
                                          const CategoriesPage(),
                                    ),
                                  );
                                },
                                child: Text(
                                  "Voir tout",
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.w400,
                                    fontSize: 11.sp,
                                    fontFamily: "Cabin",
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 1.h),
                    const SearchBarWidget(),
                    SizedBox(height: 2.h),
                    const SliderPage(),
                    SizedBox(height: 1.h),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Expanded(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                "Categories",
                                style: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.w600,
                                  fontSize: 13.sp,
                                  fontFamily: "Poppins",
                                ),
                                textAlign: TextAlign.center,
                              ),
                              GestureDetector(
                                onTap: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) =>
                                          const CategoriesPage(),
                                    ),
                                  );
                                },
                                child: Text(
                                  "Voir tout",
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.w400,
                                    fontSize: 11.sp,
                                    fontFamily: "Cabin",
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 1.h),
                    const Categorie(),
                    SizedBox(height: 2.h),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Expanded(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                "Les marques populaires",
                                style: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.w600,
                                  fontSize: 13.sp,
                                  fontFamily: "Poppins",
                                ),
                                textAlign: TextAlign.center,
                              ),
                              GestureDetector(
                                onTap: () {
                                  // Ajouter ici un code similaire si vous avez une autre page à naviguer
                                },
                                child: Text(
                                  "Voir tout",
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.w400,
                                    fontSize: 11.sp,
                                    fontFamily: "Cabin",
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 1.h),
                    const MarquePopu(),
                    SizedBox(height: 5.h),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
      bottomNavigationBar: BottomNavBar(
        onTap: (int) {},
      ),
      floatingActionButton: SizedBox(
        width: 20.w,
        height: 20.w,
        child: FloatingActionButton(
          onPressed: () {
            Navigator.pushReplacement(
              context,
              PageRouteBuilder(
                transitionDuration: const Duration(milliseconds: 300),
                pageBuilder: (_, __, ___) => const SearchLoadPage(),
                transitionsBuilder: (_, animation, __, child) {
                  return SlideTransition(
                    position: Tween<Offset>(
                      begin: const Offset(0.0, 1.0),
                      end: Offset.zero,
                    ).animate(animation),
                    child: child,
                  );
                },
              ),
            );
          },
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(13.w),
          ),
          backgroundColor: Colors.black,
          child: Image.asset(
            'assets/icons/home.png',
            width: 10.w,
            height: 10.h,
          ),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }
}
