import 'package:flutter/material.dart';
import 'package:le_bolide/src/features/Pages/registration/pages/pages.dart';
import 'package:sizer/sizer.dart';
import 'package:flutter/services.dart';

class RegistrationAuthPage extends StatelessWidget {
  const RegistrationAuthPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final focusNode1 = FocusNode();
    final focusNode2 = FocusNode();
    final focusNode3 = FocusNode();
    final focusNode4 = FocusNode();

    Future.delayed(const Duration(seconds: 3), () {
      Navigator.push(
        context,
        PageRouteBuilder(
          transitionDuration: const Duration(milliseconds: 300),
          pageBuilder: (_, __, ___) => const RegistrationLastPage(),
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
    });

    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            SizedBox(height: 6.h),
            Row(
              children: [
                SizedBox(width: 4.w),
                InkWell(
                  onTap: () {
                    Navigator.pushReplacement(
                      context,
                      PageRouteBuilder(
                        transitionDuration: const Duration(milliseconds: 300),
                        pageBuilder: (_, __, ___) => const RegistrationPage(),
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
                SizedBox(width: 35.w),
                Image.asset(
                  'assets/icons/lgo.png',
                  height: 4.h,
                  fit: BoxFit.contain,
                ),
                Spacer(flex: 3),
              ],
            ),
            SizedBox(height: 4.h),
            Text(
              "Authentification",
              style: TextStyle(
                color: Colors.black,
                fontSize: 18.sp,
                fontFamily: "Poppins",
                letterSpacing: 0.05,
              ),
              textAlign: TextAlign.center,
            ),
            SizedBox(height: 1.h),
            Text.rich(
              TextSpan(
                text: "Un SMS sera envoyé au ",
                style: TextStyle(
                  fontSize: 11.sp,
                  fontFamily: "Cabin",
                ),
                children: const <TextSpan>[
                  TextSpan(
                    text: "+221 78 444 56 78",
                    style: TextStyle(
                      color: Color(0xFF1A1A1A),
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
              textAlign: TextAlign.center,
            ),
            SizedBox(height: 2.h),
            Center(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  NumberTextField(
                      focusNode: focusNode1, nextFocusNode: focusNode2),
                  SizedBox(width: 2.h),
                  NumberTextField(
                      focusNode: focusNode2, nextFocusNode: focusNode3),
                  SizedBox(width: 2.h),
                  NumberTextField(
                      focusNode: focusNode3, nextFocusNode: focusNode4),
                  SizedBox(width: 2.h),
                  NumberTextField(focusNode: focusNode4),
                ],
              ),
            ),
            SizedBox(height: 2.h),
            Text.rich(
              TextSpan(
                text: "Vous n'avez pas reçu de code ? ",
                style: TextStyle(
                  fontSize: 11.sp,
                  fontFamily: "Cabin",
                ),
                children: <TextSpan>[
                  TextSpan(
                    text: "Renvoyer \n",
                    style: TextStyle(
                      color: const Color(0xFF1A1A1A),
                      fontWeight: FontWeight.bold,
                      fontSize: 11.sp,
                    ),
                  ),
                  TextSpan(
                    text: "Recevoir un appel",
                    style: TextStyle(
                      color: const Color(0xFF1A1A1A),
                      fontWeight: FontWeight.bold,
                      fontSize: 11.sp,
                    ),
                  ),
                ],
              ),
              textAlign: TextAlign.center,
            ),
            SizedBox(height: 3.h),
            ImageRotation(),
          ],
        ),
      ),
    );
  }
}

class NumberTextField extends StatelessWidget {
  final FocusNode focusNode;
  final FocusNode? nextFocusNode;

  const NumberTextField({Key? key, required this.focusNode, this.nextFocusNode})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 18.w,
      height: 15.w,
      decoration: BoxDecoration(
        color: Colors.grey[300],
        borderRadius: BorderRadius.circular(1.h),
      ),
      child: Center(
        child: TextField(
          focusNode: focusNode,
          textAlign: TextAlign.center,
          style: TextStyle(
            fontSize: 20.sp,
          ),
          keyboardType: TextInputType.number,
          maxLength: 1,
          decoration: const InputDecoration(
            counterText: '',
            border: OutlineInputBorder(
              borderSide: BorderSide.none,
            ),
          ),
          inputFormatters: <TextInputFormatter>[
            FilteringTextInputFormatter.digitsOnly,
          ],
          onChanged: (value) {
            if (value.isNotEmpty && nextFocusNode != null) {
              focusNode.unfocus();
              FocusScope.of(context).requestFocus(nextFocusNode);
            }
          },
        ),
      ),
    );
  }
}

class ImageRotation extends StatefulWidget {
  const ImageRotation({Key? key}) : super(key: key);

  @override
  _ImageRotationState createState() => _ImageRotationState();
}

class _ImageRotationState extends State<ImageRotation>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      vsync: this,
      duration: Duration(seconds: 2),
    )..repeat();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: _controller,
      builder: (context, child) {
        return Transform.rotate(
          angle: -_controller.value * 2.0 * 3.141592653589793,
          child: Image.asset(
            'assets/icons/sp.png',
            width: 18.w,
            height: 18.h,
            fit: BoxFit.contain,
          ),
        );
      },
    );
  }
}
