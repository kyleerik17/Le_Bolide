import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:gap/gap.dart';
import 'package:le_bolide/src/features/Pages/loading%20modal/pages/search_load_page.dart';
import 'package:sizer/sizer.dart';

import '../../Home/widgets/appbar.dart';
import '../../Home/widgets/bouton_ajouter.dart';
import '../Widgets/bottom.dart';

class FavorisPage extends StatefulWidget {
  const FavorisPage({Key? key}) : super(key: key);

  @override
  _FavorisPageState createState() => _FavorisPageState();
}

class _FavorisPageState extends State<FavorisPage> {
  String _selectedButton = '';

  void _onButtonPressed(String buttonText) {
    setState(() {
      _selectedButton = buttonText;
    });
  }

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle.dark.copyWith(
      statusBarColor: Colors.white,
      statusBarIconBrightness: Brightness.dark,
      statusBarBrightness: Brightness.dark,
    ));
    return Scaffold(
      backgroundColor: const Color(0xFFF7F8F9),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 2.h),
            const AppBarWidget(),
            Padding(
              padding: EdgeInsets.all(4.w),
              child: Column(
                children: [
                  TextField(
                    decoration: InputDecoration(
                      contentPadding:
                          EdgeInsets.symmetric(vertical: 1.h, horizontal: 4.w),
                      border: OutlineInputBorder(
                        borderSide: const BorderSide(color: Colors.black),
                        borderRadius: BorderRadius.circular(1.h),
                      ),
                      filled: true,
                      fillColor: Colors.white,
                      hintText: 'Rechercher',
                      hintStyle: TextStyle(
                        color: const Color(0xFF737373),
                        fontFamily: 'Poppins,',
                        fontSize: 10.sp,
                      ),
                      prefixIcon: ImageIcon(
                        const AssetImage('assets/icons/search.png'),
                        size: 5.w,
                        color: Colors.black,
                      ),
                    ),
                    style: const TextStyle(
                      color: Colors.black,
                    ),
                  ),
                  SizedBox(height: 1.h),
                  Row(
                    children: [
                      TextButton(
                        style: TextButton.styleFrom(
                          backgroundColor: _selectedButton == 'Tout'
                              ? Colors.black
                              : Colors.white,
                          side: const BorderSide(color: Colors.grey),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(0.5.h),
                          ),
                          padding: EdgeInsets.symmetric(
                            horizontal: 5.w,
                          ),
                          minimumSize: Size(0, 3.h),
                        ),
                        onPressed: () => _onButtonPressed('Tout'),
                        child: Text(
                          'Tout',
                          style: TextStyle(
                            color: _selectedButton == 'Tout'
                                ? Colors.white
                                : Colors.black,
                          ),
                        ),
                      ),
                      Gap(2.w),
                      TextButton(
                        style: TextButton.styleFrom(
                          backgroundColor: _selectedButton == 'En cours'
                              ? Colors.black
                              : Colors.white,
                          side: const BorderSide(color: Colors.grey),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(0.5.h),
                          ),
                          padding: EdgeInsets.symmetric(horizontal: 5.w),
                          minimumSize: Size(0, 3.h),
                        ),
                        onPressed: () => _onButtonPressed('En cours'),
                        child: Text(
                          'En cours',
                          style: TextStyle(
                            color: _selectedButton == 'En cours'
                                ? Colors.white
                                : Colors.black,
                          ),
                        ),
                      ),
                      Gap(2.w),
                      TextButton(
                        style: TextButton.styleFrom(
                          backgroundColor: _selectedButton == 'Terminées'
                              ? Colors.black
                              : Colors.white,
                          side: const BorderSide(color: Colors.grey),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(0.5.h),
                          ),
                          padding: EdgeInsets.symmetric(
                            horizontal: 5.w,
                          ),
                          minimumSize: Size(0, 3.h),
                        ),
                        onPressed: () => _onButtonPressed('Terminées'),
                        child: Text(
                          'Terminées',
                          style: TextStyle(
                            color: _selectedButton == 'Terminées'
                                ? Colors.white
                                : Colors.black,
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 4.w),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                        width: 92.w,
                        height: 28.w,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(0.5.h),
                        ),
                        padding: EdgeInsets.symmetric(
                            vertical: 0.w, horizontal: 4.w),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              width: 20.w,
                              height: 25.w,
                              decoration: BoxDecoration(
                                image: const DecorationImage(
                                  image: AssetImage('assets/images/pn.png'),
                                  fit: BoxFit.contain,
                                ),
                                borderRadius: BorderRadius.circular(0.5.h),
                              ),
                            ),
                            SizedBox(width: 2.w),
                            Expanded(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'Radar Rivera PRO 2 165/65 R13 77T',
                                    style: TextStyle(
                                      fontSize: 13.sp,
                                      fontFamily: "Cabin",
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                  SizedBox(height: 1.w),
                                  Row(children: [
                                    Image.asset(
                                      'assets/icons/sun.png',
                                      width: 6.w,
                                      height: 6.w,
                                    ),
                                    SizedBox(width: 1.w),
                                    Text(
                                      'Pneu été',
                                      style: TextStyle(
                                        fontSize: 12.sp,
                                        fontFamily: "Cabin",
                                        fontWeight: FontWeight.w400,
                                      ),
                                    ),
                                  ]),
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text(
                                        '38 000 F',
                                        style: TextStyle(
                                          fontSize: 13.sp,
                                          fontFamily: "Cabin",
                                          fontWeight: FontWeight.w500,
                                        ),
                                      ),
                                      const QuantityWidget(),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: [
                                SizedBox(height: 2.w),
                                Image.asset(
                                  'assets/icons/oc1.png',
                                  width: 6.w,
                                  height: 6.w,
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 4.w),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                        width: 92.w,
                        height: 28.w,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(0.5.h),
                        ),
                        padding: EdgeInsets.symmetric(
                            vertical: 0.w, horizontal: 4.w),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              width: 20.w,
                              height: 25.w,
                              decoration: BoxDecoration(
                                image: const DecorationImage(
                                  image: AssetImage('assets/images/btl.jpeg'),
                                  fit: BoxFit.contain,
                                ),
                                borderRadius: BorderRadius.circular(0.5.h),
                              ),
                            ),
                            SizedBox(width: 2.w),
                            Expanded(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'O1491E K2 TEXAR XN1',
                                    style: TextStyle(
                                      fontSize: 13.sp,
                                      fontFamily: "Cabin",
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                  SizedBox(height: 1.w),
                                  Row(children: [
                                    Image.asset(
                                      'assets/icons/hle.png',
                                      width: 6.w,
                                      height: 6.w,
                                    ),
                                    SizedBox(width: 1.w),
                                    Text(
                                      'Huile moteur',
                                      style: TextStyle(
                                        fontSize: 12.sp,
                                        fontFamily: "Cabin",
                                        fontWeight: FontWeight.w400,
                                      ),
                                    ),
                                  ]),
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text(
                                        '12 000 F',
                                        style: TextStyle(
                                          fontSize: 13.sp,
                                          fontFamily: "Cabin",
                                          fontWeight: FontWeight.w500,
                                        ),
                                      ),
                                      SizedBox(width: 2.w),
                                      QuantityWidget(),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: [
                                SizedBox(height: 2.w),
                                Image.asset(
                                  'assets/icons/oc1.png',
                                  width: 6.w,
                                  height: 6.w,
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 4.w),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                        width: 92.w,
                        height: 28.w,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(0.5.h),
                        ),
                        padding: EdgeInsets.symmetric(
                            vertical: 0.w, horizontal: 4.w),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              width: 20.w,
                              height: 25.w,
                              decoration: BoxDecoration(
                                image: const DecorationImage(
                                  image: AssetImage('assets/images/phr.png'),
                                  fit: BoxFit.contain,
                                ),
                                borderRadius: BorderRadius.circular(0.5.h),
                              ),
                            ),
                            SizedBox(width: 2.w),
                            Expanded(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'JOHNS Feu arrière pour HYUNDAI SANTA FE',
                                    style: TextStyle(
                                      fontSize: 12.sp,
                                      fontFamily: "Cabin",
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                  SizedBox(height: 1.w),
                                  Row(children: [
                                    Image.asset(
                                      'assets/icons/ar.png',
                                      width: 6.w,
                                      height: 6.w,
                                    ),
                                    SizedBox(width: 1.w),
                                    Text(
                                      'Carrosserie',
                                      style: TextStyle(
                                        fontSize: 11.sp,
                                        fontFamily: "Cabin",
                                        fontWeight: FontWeight.w400,
                                      ),
                                    ),
                                  ]),
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text(
                                        '38 000 F',
                                        style: TextStyle(
                                          fontSize: 11.sp,
                                          fontFamily: "Cabin",
                                          fontWeight: FontWeight.w500,
                                        ),
                                      ),
                                      const QuantityWidget(),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: [
                                SizedBox(height: 2.w),
                                Image.asset(
                                  'assets/icons/oc1.png',
                                  width: 6.w,
                                  height: 6.w,
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 4.w),
                ],
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: FavorisBottomNavBar(
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
