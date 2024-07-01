import 'package:flutter/material.dart';
import 'package:le_bolide/src/features/Pages/Home/Pay/Pages/checkout_page.dart';
import 'package:sizer/sizer.dart';

import '../Menu/pages/menu.dart';

class AppBarWidget extends StatefulWidget {
  const AppBarWidget({Key? key}) : super(key: key);

  @override
  _AppBarWidgetState createState() => _AppBarWidgetState();
}

class _AppBarWidgetState extends State<AppBarWidget>
    with SingleTickerProviderStateMixin {
  late AnimationController _animationController;

  @override
  void initState() {
    super.initState();
    _animationController = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 300),
    );
  }

  @override
  void dispose() {
    _animationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color(0xFFFFFFFF),
      child: Padding(
        padding: EdgeInsets.symmetric(vertical: 0.8.h),
        child: Row(
          children: [
            SizedBox(width: 4.w),
            GestureDetector(
              onTap: () {
                showGeneralDialog(
                  context: context,
                  barrierDismissible: true,
                  barrierLabel: MaterialLocalizations.of(context)
                      .modalBarrierDismissLabel,
                  barrierColor: Colors.black.withOpacity(0.5),
                  transitionDuration: const Duration(milliseconds: 200),
                  pageBuilder: (BuildContext buildContext,
                      Animation<double> animation,
                      Animation<double> secondaryAnimation) {
                    return FractionallySizedBox(
                      widthFactor: 0.6,
                      heightFactor: 1,
                      alignment: Alignment.centerLeft,
                      child: SlideTransition(
                        position: Tween<Offset>(
                          begin: const Offset(-1.0, 0.0),
                          end: Offset.zero,
                        ).animate(animation),
                        child: Material(
                          type: MaterialType.transparency,
                          child: Container(
                            color: Colors.white,
                            child: const MenuPage(),
                          ),
                        ),
                      ),
                    );
                  },
                );
              },
              child: Image.asset(
                'assets/icons/menu.png',
                color: Colors.black,
              ),
            ),
            SizedBox(width: 20.w),
            Center(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(height: 25.w),
                  Image.asset(
                    'assets/icons/lgo.png',
                    width: 45.w,
                    height: 13.w,
                    fit: BoxFit.contain,
                  ),
                ],
              ),
            ),
            SizedBox(width: 15.w),
            GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const PayPage()),
                );
              },
              child: Image.asset(
                'assets/icons/carte.png',
                width: 10.w,
                height: 8.w,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
