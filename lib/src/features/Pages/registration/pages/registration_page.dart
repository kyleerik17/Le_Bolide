import 'package:flutter/material.dart';
import 'package:le_bolide/src/features/Pages/Onboarding/onboarding.dart';
import 'package:le_bolide/src/features/Pages/registration/pages/pages.dart';
import 'package:le_bolide/src/features/Widgets/inputs/inputs.dart';

import 'package:sizer/sizer.dart';

class RegistrationPage extends StatelessWidget {
  const RegistrationPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: false,
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
                          pageBuilder: (_, __, ___) => const OnboardingPage(),
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
                SizedBox(width: 35.w),
                Center(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset(
                        'assets/icons/lgo.png',
                        height: 4.h,
                        fit: BoxFit.contain,
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
                    SizedBox(height: 20.w),
                    Image.asset(
                      'assets/icons/tel.png',
                      width: 100,
                      height: 100,
                      fit: BoxFit.contain,
                    ),
                    SizedBox(height: 3.h),
                    Text(
                      'Entrer votre numéro mobile',
                      style: TextStyle(
                        fontSize: 21.sp,
                        fontFamily: "Poppins",
                        fontWeight: FontWeight.w500,
                      ),
                      textAlign: TextAlign.center,
                    ),
                    SizedBox(height: 3.h),
                    Text(
                      'Numéro mobile',
                      style: TextStyle(
                        fontSize: 12.sp,
                        fontFamily: "Cabin",
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                    SizedBox(height: 1.h),
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
                                  "+221 78 444 56 78 ",
                                  style: TextStyle(
                                    fontSize: 12.sp,
                                    fontWeight: FontWeight.w400,
                                    fontFamily: "Cabin",
                                  ),
                                ),
                              ],
                            ),
                          ),
                          suffixIcon: Padding(
                            padding: const EdgeInsets.all(0),
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
                          prefixText: const Text(''),
                        ),
                      ],
                    ),
                    SizedBox(height: 2.h),
                    Text.rich(
                      TextSpan(
                        text: "En continuant, vous acceptez ",
                        style: TextStyle(
                          fontSize: 12.sp,
                          fontFamily: "Cabin",
                        ),
                        children: const <TextSpan>[
                          TextSpan(
                            text: "nos conditions générales d'utilisations",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          TextSpan(
                            text: ".",
                          ),
                        ],
                      ),
                      textAlign: TextAlign.center,
                    ),
                    SizedBox(height: 60.w),
                    Center(
                      child: ElevatedButton(
                        onPressed: () {
                          Navigator.pushReplacement(
                            context,
                            PageRouteBuilder(
                              transitionDuration:
                                  const Duration(milliseconds: 300),
                              pageBuilder: (_, __, ___) =>
                                  const RegistrationAuthPage(),
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
                            borderRadius: BorderRadius.circular(1.h),
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
