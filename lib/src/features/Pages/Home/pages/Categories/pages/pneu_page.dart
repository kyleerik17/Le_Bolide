import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:sizer/sizer.dart';

import '../../../widgets/search.dart';
import '../widgets/article.dart';

class PneuPage extends StatefulWidget {
  const PneuPage({Key? key}) : super(key: key);

  @override
  // ignore: library_private_types_in_public_api
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
            leading: Image.asset(
              'assets/icons/gc.png',
              width: 15.w,
              height: 15.w,
              color: Colors.black,
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
              children: [
                const SearchBarWidget(),
                SizedBox(height: 2.h),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
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
                        padding: EdgeInsets.symmetric(horizontal: 4.w),
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
                        backgroundColor: _selectedButton == 'Filtres'
                            ? Colors.black
                            : Colors.white,
                        side: const BorderSide(color: Colors.grey),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(0.5.h),
                        ),
                        padding: EdgeInsets.symmetric(horizontal: 4.w),
                        minimumSize: Size(0, 3.8.h),
                      ),
                      onPressed: () => _onButtonPressed('Filtres'),
                      child: Text(
                        'Filtres',
                        style: TextStyle(
                          color: _selectedButton == 'Filtres'
                              ? Colors.white
                              : Colors.black,
                        ),
                      ),
                    ),
                    Gap(2.w),
                    TextButton(
                      style: TextButton.styleFrom(
                        backgroundColor: _selectedButton == 'Trier par'
                            ? Colors.black
                            : Colors.white,
                        side: const BorderSide(color: Colors.grey),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(0.5.h),
                        ),
                        padding: EdgeInsets.symmetric(horizontal: 4.w),
                        minimumSize: Size(0, 3.8.h),
                      ),
                      onPressed: () => _onButtonPressed('Trier par'),
                      child: Text(
                        'Trier par',
                        style: TextStyle(
                          color: _selectedButton == 'Trier par'
                              ? Colors.white
                              : Colors.black,
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 2.h),
                const ArticlePage(), 
                SizedBox(height: 2.h),
                Expanded(
                  child: GridView.count(
                    crossAxisCount: 3,
                    crossAxisSpacing: 4.w,
                    mainAxisSpacing: 4.w,
                    children: const [],
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
