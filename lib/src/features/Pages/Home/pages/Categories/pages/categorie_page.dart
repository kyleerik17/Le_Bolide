import 'package:flutter/material.dart';
import 'package:le_bolide/src/features/Pages/Home/pages/Categories/pages/pneu_page.dart';
import 'package:le_bolide/src/features/Pages/Home/pages/home_page.dart';

class CategoriesPage extends StatelessWidget {
  const CategoriesPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: GestureDetector(
          onTap: () {
            print('Navigating to HomePage');
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const HomePage()),
            ).then((value) {
              print('Navigated to HomePage');
            });
          },
          child: Image.asset(
            'assets/icons/gc.png',
            width: 40,
            height: 40,
            color: Colors.black,
          ),
        ),
        backgroundColor: Colors.white,
        elevation: 0,
        title: const Text(
          'Catégories',
          style: TextStyle(
            color: Colors.black,
            fontSize: 18,
            fontWeight: FontWeight.w600,
          ),
        ),
        centerTitle: true,
      ),
      body: Container(
        color: const Color(0xFFFCFCFC),
        padding: const EdgeInsets.all(16),
        child: GridView.count(
          crossAxisCount: 3,
          crossAxisSpacing: 16,
          mainAxisSpacing: 16,
          children: [
            const CategoryItem(
                icon: 'assets/icons/voiture.png', label: 'Voiture'),
            const CategoryItem(icon: 'assets/icons/moto.png', label: 'Moto'),
           GestureDetector(
  onTap: () {
    print('Pneu button clicked');
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => const PneuPage()),
    );
  },
  child: const CategoryItem(
    icon: 'assets/icons/rng.png', 
    label: 'Pneus',
  ),
),

            const CategoryItem(icon: 'assets/icons/tl.png', label: 'Outillage'),
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
  }
}

class CategoryItem extends StatelessWidget {
  final String icon;
  final String label;

  const CategoryItem({
    super.key,
    required this.icon,
    required this.label,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: 80,
          height: 80,
          decoration: BoxDecoration(
            shape: BoxShape.rectangle,
            color: Colors.black,
            borderRadius: BorderRadius.circular(10),
          ),
          child: Center(
            child: Image.asset(
              icon,
              width: 60,
              height: 60,
            ),
          ),
        ),
        const SizedBox(height: 8),
        Text(
          label,
          style: const TextStyle(
            fontSize: 12,
            fontFamily: 'Poppins',
            fontWeight: FontWeight.w500,
          ),
          textAlign: TextAlign.center,
        ),
      ],
    );
  }
}
