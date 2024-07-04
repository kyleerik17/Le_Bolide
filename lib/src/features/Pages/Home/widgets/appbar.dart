import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'package:le_bolide/src/features/Pages/Home/Pay/Pages/checkout_page.dart';

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
      height: 24.w,
      color: const Color(0xFFFFFFFF),
      child: Padding(
        padding: EdgeInsets.symmetric(
            vertical: 2.h), // Utilisation de sizer pour le padding vertical
        child: Row(
          mainAxisAlignment: MainAxisAlignment
              .spaceBetween, // Aligner les éléments aux extrémités
          children: [
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
              child: Padding(
                padding: EdgeInsets.only(left: 4.0.w), // Espacement à gauche
                child: Image.asset(
                  'assets/icons/menu.png',
                  color: Colors.black,
                ),
              ),
            ),
            Expanded(
              child: Center(
                child: Image.asset(
                  'assets/icons/ll.png',
                  fit: BoxFit.contain,
                ),
              ),
            ),
            GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const PayPage()),
                );
              },
              child: Padding(
                padding: EdgeInsets.only(right: 4.0.w), // Espacement à droite
                child: Image.asset(
                  'assets/icons/carte.png',
                  width:
                      10.w, // Utilisation de sizer pour la largeur de l'image
                  height:
                      6.0.h, // Utilisation de sizer pour la hauteur de l'image
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
