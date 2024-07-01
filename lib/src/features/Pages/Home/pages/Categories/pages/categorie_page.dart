import 'package:flutter/material.dart';
import 'package:le_bolide/src/features/Pages/Favoris/Pages/favoris.dart';
import 'package:le_bolide/src/features/Pages/Home/pages/Categories/pages/pages.dart';
import 'package:sizer/sizer.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Sizer(
      builder: (context, orientation, deviceType) {
        return const MaterialApp(
          home: CategoriesPage(),
        );
      },
    );
  }
}

class CategoriesPage extends StatelessWidget {
  const CategoriesPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Sizer(
      builder: (context, orientation, deviceType) {
        return Scaffold(
          appBar: AppBar(
            leading: Image.asset(
              'assets/icons/gc.png',
              width: 15.w,
              height: 15.w,
              color: Colors.black,
            ),
            backgroundColor: Colors.white,
            elevation: 0,
            title: Text(
              'Catégories',
              style: TextStyle(
                color: Colors.black,
                fontSize: 16.sp,
                fontWeight: FontWeight.w600,
              ),
            ),
            centerTitle: true,
          ),
          body: Container(
            color: const Color.fromARGB(255, 252, 252, 252),
            padding: EdgeInsets.all(4.w),
            child: GridView.count(
              crossAxisCount: 3,
              crossAxisSpacing: 4.w,
              mainAxisSpacing: 4.w,
              children: [
                const CategoryItem(
                    icon: 'assets/icons/voiture.png', label: 'Voiture'),
                const CategoryItem(
                    icon: 'assets/icons/moto.png', label: 'Moto'),
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const PneuPage()),
                    );
                  },
                  child: const CategoryItem(
                      icon: 'assets/icons/rng.png', label: 'Pneus'),
                ),
                const CategoryItem(
                    icon: 'assets/icons/tl.png', label: 'Outillage'),
                const CategoryItem(
                    icon: 'assets/icons/acc.png', label: 'Accessoires Auto'),
                const CategoryItem(
                    icon: 'assets/icons/hll.png', label: 'Huile moteur'),
                const CategoryItem(
                    icon: 'assets/icons/filtre.png', label: 'Filtre'),
                const CategoryItem(
                    icon: 'assets/icons/freins.png', label: 'Freins'),
                const CategoryItem(
                    icon: 'assets/icons/ess.png', label: 'Électromobilité'),
                const CategoryItem(
                    icon: 'assets/icons/care.png', label: 'Poids lourds'),
              ],
            ),
          ),
        );
      },
    );
  }
}

class CategoryItem extends StatelessWidget {
  final String icon;
  final String label;

  const CategoryItem({
    Key? key,
    required this.icon,
    required this.label,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: 20.w,
          height: 20.w,
          decoration: BoxDecoration(
            shape: BoxShape.rectangle,
            color: Colors.black,
            borderRadius: BorderRadius.circular(10),
          ),
          child: Center(
            child: Image.asset(
              icon,
              width: 15.w,
              height: 15.w,
            ),
          ),
        ),
        SizedBox(height: 1.h),
        Text(
          label,
          style: TextStyle(
            fontSize: 10.sp,
            fontFamily: 'Poppins',
            fontWeight: FontWeight.w500,
          ),
          textAlign: TextAlign.center,
        ),
      ],
    );
  }
}
