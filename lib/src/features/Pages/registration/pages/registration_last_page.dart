import 'package:flutter/material.dart';
import 'package:le_bolide/src/features/Pages/registration/pages/pages.dart';
import 'package:sizer/sizer.dart';

import '../../../Widgets/inputs/inputs.dart';

class RegistrationLastPage extends StatelessWidget {
  const RegistrationLastPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 4.w),
        child: Column(
          children: [
            SizedBox(height: 6.h),
            Row(
              children: [
                Positioned(
                  top: 0,
                  left: 0,
                  bottom: 0,
                  child: InkWell(
                    onTap: () {
                      Navigator.pushReplacement(
                        context,
                        PageRouteBuilder(
                          transitionDuration: const Duration(milliseconds: 300),
                          pageBuilder: (_, __, ___) =>
                              const RegistrationAuthPage(),
                          transitionsBuilder: (_, animation, __, child) {
                            return SlideTransition(
                              position: Tween<Offset>(
                                begin: const Offset(-1.0, 0.0),
                                end: Offset.zero,
                              ).animate(animation),
                              child: child,
                            );
                          },
                        ),
                      );
                    },
                    child: Container(
                      decoration: const BoxDecoration(
                        color: Color(0xFFEBEBEB),
                        shape: BoxShape.circle,
                      ),
                      padding: EdgeInsets.all(2.w),
                      child: Icon(Icons.arrow_back_ios_new, size: 3.w),
                    ),
                  ),
                ),
                SizedBox(width: 9.h),
                Center(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Center(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Image.asset(
                              'assets/icons/lgo.png',
                              height: 4.h,
                              width: 40.w,
                              fit: BoxFit.contain,
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            SizedBox(height: 3.h),
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    SizedBox(height: 4.h),
                    Image.asset(
                      'assets/icons/il.png',
                      width: 15.w,
                      height: 15.h,
                      fit: BoxFit.contain,
                    ),
                    SizedBox(height: 3.h),
                    Text(
                      'Inscription',
                      style: TextStyle(
                        fontSize: 16.sp,
                        fontFamily: "Cabin",
                        fontWeight: FontWeight.w600,
                      ),
                      textAlign: TextAlign.center,
                    ),
                    SizedBox(height: 3.h),
                    Text(
                      'Veuillez entrer vos nom(s) et prénom(s) ainsi que votre date de naissance',
                      style: TextStyle(
                        fontSize: 12.sp,
                        fontFamily: "Cabin",
                      ),
                      textAlign: TextAlign.center,
                    ),
                    SizedBox(height: 1.5.h),
                    Stack(
                      alignment: Alignment.bottomLeft,
                      children: [
                        InputText(
                          hintText: "",
                          prefixIcon: Padding(
                            padding: EdgeInsets.all(0.w),
                            child: Row(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                SizedBox(width: 1.5.h),
                                Image.asset(
                                  'assets/icons/sng.png',
                                  width: 5.w,
                                ),
                                SizedBox(width: 2.w),
                                Text(
                                  "+221",
                                  style: TextStyle(
                                    fontSize: 12.sp,
                                    fontWeight: FontWeight.w500,
                                    fontFamily: "Inter",
                                  ),
                                ),
                              ],
                            ),
                          ),
                          suffixIcon: Padding(
                            padding: EdgeInsets.all(0),
                            child: Row(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                SizedBox(width: 1.5.h),
                                Image.asset(
                                  'assets/icons/check.png',
                                  width: 5.w,
                                ),
                              ],
                            ),
                          ),
                          capitalization: TextCapitalization.words,
                          prefixText: Text(''),
                        ),
                        Positioned(
                          left: 82,
                          bottom: 15.5,
                          child: Text(
                            " 07 444 456 78",
                            style: TextStyle(
                              fontSize: 12.sp,
                              color: Color(0xFF1A1A1A),
                              fontFamily: "Cabin",
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 1.h),
                    InputText(
                      hintText: "",
                      prefixIcon: Padding(
                        padding: EdgeInsets.all(0.w),
                        child: Row(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            SizedBox(width: 1.5.h),
                            Image.asset(
                              'assets/icons/crt.png',
                              width: 5.w,
                            ),
                            SizedBox(width: 2.w),
                            Text(
                              "Nom(s) ",
                              style: TextStyle(
                                fontSize: 12.sp,
                                fontWeight: FontWeight.w400,
                                fontFamily: "Cabin",
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(height: 1.h),
                    InputText(
                      hintText: "",
                      prefixIcon: Padding(
                        padding: EdgeInsets.all(0.w),
                        child: Row(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            SizedBox(width: 1.5.h),
                            Image.asset(
                              'assets/icons/crt.png',
                              width: 5.w,
                            ),
                            SizedBox(width: 2.w),
                            Text(
                              "Prenom(s) ",
                              style: TextStyle(
                                fontSize: 12.sp,
                                fontWeight: FontWeight.w400,
                                fontFamily: "Cabin",
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(height: 50.w),
                    Center(
                      child: ElevatedButton(
                        onPressed: () {
                          Navigator.pushReplacement(
                            context,
                            PageRouteBuilder(
                              transitionDuration:
                                  const Duration(milliseconds: 300),
                              pageBuilder: (_, __, ___) =>
                                  const RegistrationCongratulationPage(),
                              transitionsBuilder: (_, animation, __, child) {
                                return SlideTransition(
                                  position: Tween<Offset>(
                                    begin: const Offset(1.0, 0.0),
                                    end: Offset.zero,
                                  ).animate(animation),
                                  child: child,
                                );
                              },
                            ),
                          );
                        },
                        style: ElevatedButton.styleFrom(
                          primary: const Color(0xFF1A1A1A),
                          padding: EdgeInsets.symmetric(
                              vertical: 1.5.h, horizontal: 10.h),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(1.5.w),
                          ),
                        ),
                        child: Text(
                          "Suivant",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 12.sp,
                              fontFamily: "Cabin",
                              fontWeight: FontWeight.w600),
                        ),
                      ),
                    ),
                    SizedBox(height: 2.h),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
