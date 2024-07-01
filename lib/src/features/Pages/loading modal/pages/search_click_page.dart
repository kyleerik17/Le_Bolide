import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'resultat_search_page.dart';

class SearchClickPage extends StatelessWidget {
  const SearchClickPage({Key? key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.all(4.w),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 3.h),
            Row(
              children: [
                GestureDetector(
                  onTap: () {
                    Navigator.pop(context);
                  },
                  child: Container(
                    decoration: const BoxDecoration(
                      shape: BoxShape.circle,
                      color: Color(0xFFEBEBEB),
                    ),
                    padding: EdgeInsets.all(0.w),
                    child: Image.asset(
                      'assets/icons/close.png',
                      width: 12.w,
                      height: 12.w,
                      color: Colors.black,
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 3.h),
            Text(
              'Numéro de châssis',
              style: TextStyle(fontSize: 14.sp),
            ),
            SizedBox(height: 1.h),
            GestureDetector(
              onTap: () {
                _showLoadingDialog(
                    context); // Affiche le dialogue de chargement
                Future.delayed(Duration(seconds: 2), () {
                  Navigator.pop(context); // Ferme le dialogue après 2 secondes
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const SearchResultPage(),
                    ),
                  );
                });
              },
              child: Container(
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.grey),
                  borderRadius: BorderRadius.circular(1.5.w),
                  color: Colors.white,
                ),
                padding: EdgeInsets.symmetric(horizontal: 2.w, vertical: 1.5.h),
                child: Row(
                  children: [
                    Image.asset(
                      'assets/icons/key.png',
                      height: 4.w,
                      width: 4.w,
                    ),
                    SizedBox(width: 3.w),
                    Expanded(
                      child: Text(
                        'KM8 SRDHF5 EU123456',
                        style: TextStyle(
                          color: const Color(0xFF94979E),
                          fontFamily: 'Cabin',
                          fontWeight: FontWeight.w500,
                          fontSize: 12.sp,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(height: 2.h),
            Row(
              children: [
                const Expanded(
                  child: Divider(
                    color: Colors.grey,
                    thickness: 0.5,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8.0),
                  child: Text(
                    'ou',
                    style: TextStyle(
                        fontSize: 10.sp, color: const Color(0xFFC9CDD2)),
                  ),
                ),
                const Expanded(
                  child: Divider(
                    color: Colors.grey,
                    thickness: 0.5,
                  ),
                ),
              ],
            ),
            SizedBox(height: 1.h),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('Fabricant',
                    style: TextStyle(
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.w500,
                        fontSize: 12.sp)),
                SizedBox(height: 1.5.h),
                DropdownButtonFormField<String>(
                  decoration: InputDecoration(
                    hintText: 'Choisissez une marque',
                    border: const OutlineInputBorder(),
                    contentPadding:
                        EdgeInsets.symmetric(vertical: 1.5.h, horizontal: 2.w),
                  ),
                  value: 'Hyundai',
                  items:
                      ['Hyundai', 'Toyota', 'Ford', 'BMW'].map((String value) {
                    return DropdownMenuItem<String>(
                      value: value,
                      child: Text(value),
                    );
                  }).toList(),
                  onChanged: (newValue) {},
                  icon: ImageIcon(
                    const AssetImage('assets/icons/dw.png'),
                    size: 4.w,
                    color: Colors.black,
                  ),
                ),
                SizedBox(height: 1.5.h),
                Text('Modèle',
                    style: TextStyle(
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.w500,
                        fontSize: 12.sp)),
                SizedBox(height: 1.h),
                DropdownButtonFormField<String>(
                  decoration: InputDecoration(
                    hintText: 'Choisissez votre modèle',
                    border: const OutlineInputBorder(),
                    contentPadding:
                        EdgeInsets.symmetric(vertical: 1.5.h, horizontal: 2.w),
                  ),
                  items:
                      ['i30', 'Corolla', 'Mustang', 'X5'].map((String value) {
                    return DropdownMenuItem<String>(
                      value: value,
                      child: Text(value),
                    );
                  }).toList(),
                  onChanged: (newValue) {},
                  icon: ImageIcon(
                    const AssetImage('assets/icons/dw.png'),
                    size: 4.w,
                    color: Colors.black,
                  ),
                ),
                SizedBox(height: 1.5.h),
                Text(
                  'Motorisation',
                  style: TextStyle(
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.w500,
                      fontSize: 12.sp),
                ),
                SizedBox(height: 1.h),
                DropdownButtonFormField<String>(
                  decoration: InputDecoration(
                    hintText: 'Choisissez votre moteur',
                    border: const OutlineInputBorder(),
                    contentPadding:
                        EdgeInsets.symmetric(vertical: 1.5.h, horizontal: 2.w),
                  ),
                  items: ['Essence', 'Diesel', 'Électrique', 'Hybride']
                      .map((String value) {
                    return DropdownMenuItem<String>(
                      value: value,
                      child: Text(value),
                    );
                  }).toList(),
                  onChanged: (newValue) {},
                  icon: ImageIcon(
                    const AssetImage('assets/icons/dw.png'),
                    size: 4.w,
                    color: Colors.black,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  void _showLoadingDialog(BuildContext context) {
    showDialog(
      context: context,
      barrierDismissible: false,
      builder: (BuildContext context) {
        return AlertDialog(
          content: Container(
            child: Center(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  CircularProgressIndicator(
                    valueColor: AlwaysStoppedAnimation<Color>(Colors.black),
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );

    Future.delayed(Duration(seconds: 2), () {
      Navigator.pop(context);
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => const SearchResultPage(),
        ),
      );
    });
  }
}
