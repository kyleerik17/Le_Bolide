import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:le_bolide/src/features/Pages/Home/Pay/Widgets/article2.dart';
import 'package:le_bolide/src/features/Pages/Home/Pay/Widgets/article3.dart';
import 'package:le_bolide/src/features/Pages/Home/pages/Categories/pages/categorie_page.dart';
import 'package:sizer/sizer.dart';

import '../../../widgets/search.dart';
import '../widgets/article.dart';

class PneuPage extends StatefulWidget {
  const PneuPage({Key? key}) : super(key: key);

  @override
  _PneuPageState createState() => _PneuPageState();
}

class _PneuPageState extends State<PneuPage> {
  String _selectedButton = '';

  void _onButtonPressed(String buttonText) {
    setState(() {
      _selectedButton = buttonText;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Sizer(
      builder: (context, orientation, deviceType) {
        return Scaffold(
          appBar: AppBar(
            leading: GestureDetector(
              onTap: () {
                Navigator.pop(
                  context,
                );
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
            title: Text(
              'Pneus',
              style: TextStyle(
                color: Colors.black,
                fontSize: 16.sp,
                fontWeight: FontWeight.w600,
              ),
            ),
            centerTitle: true,
          ),
          body: Container(
            color: const Color(0xFFF7F8F9),
            padding: EdgeInsets.all(4.w),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SearchBarWidget(),
                SizedBox(height: 2.h),
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
                          horizontal: 4.w,
                        ),
                        minimumSize: Size(0, 3.8.h),
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
                        backgroundColor: Colors.white,
                        side: const BorderSide(color: Colors.grey),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(0.5.h),
                        ),
                        padding: EdgeInsets.symmetric(horizontal: 4.w),
                        minimumSize: Size(0, 3.8.h),
                      ),
                      onPressed: () => _onButtonPressed('Filtres'),
                      child: Row(
                        children: [
                          const Text(
                            'Filtres',
                            style: TextStyle(
                              color: Colors.black,
                            ),
                          ),
                          SizedBox(width: 1.w),
                          Image.asset(
                            'assets/icons/fltr.png',
                            color: Colors.black,
                          ),
                        ],
                      ),
                    ),
                    Gap(2.w),
                    TextButton(
                      style: TextButton.styleFrom(
                        backgroundColor: Colors.white,
                        side: const BorderSide(color: Colors.grey),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(0.5.h),
                        ),
                        padding: EdgeInsets.symmetric(
                          horizontal: 4.w,
                        ),
                        minimumSize: Size(0, 3.8.h),
                      ),
                      onPressed: () => _onButtonPressed('Trier par'),
                      child: Row(
                        children: [
                          const Text(
                            'Trier par',
                            style: TextStyle(
                              color: Colors.black,
                            ),
                          ),
                          SizedBox(width: 1.w),
                          Image.asset(
                            'assets/icons/fltr.png',
                            color: Colors.black,
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 2.h),
                const Article3Page(),
                SizedBox(height: 2.h),
              ],
            ),
          ),
        );
      },
    );
  }
}
