import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:sizer/sizer.dart';

import '../../../Pay/Widgets/add.dart';
import '../../../widgets/bouton_ajouter.dart';

class ArticlePage extends StatelessWidget {
  const ArticlePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(height: 4.w),
        _buildArticle(
          imageUrl: 'assets/images/pn2.png',
          title: 'Radar Rivera PRO 2 165/65 R13 77T',
          iconUrl: 'assets/icons/sun.png',
          description: 'Pneu été',
          price: '38 000 F',
        ),
        _buildArticle(
          imageUrl: 'assets/images/pn1.jpeg',
          title: 'Continental TS860 155/70 R13 75T',
          iconUrl: 'assets/icons/hv.png',
          description: 'Pneu hiver',
          price: '59 000 F',
        ),
      ],
    );
  }

  Widget _buildArticle({
    required String imageUrl,
    required String title,
    required String iconUrl,
    required String description,
    required String price,
  }) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Container(
          width: 92.w,
          height: 30.w,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(0.5.h),
          ),
          padding: EdgeInsets.symmetric(vertical: 0.w, horizontal: 4.w),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                width: 20.w,
                height: 25.w,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage(imageUrl),
                    fit: BoxFit.contain,
                  ),
                  borderRadius: BorderRadius.circular(0.5.h),
                ),
              ),
              SizedBox(width: 2.w),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      title,
                      style: TextStyle(
                        fontSize: 13.sp,
                        fontFamily: "Cabin",
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    SizedBox(height: 1.w),
                    Row(
                      children: [
                        Image.asset(
                          iconUrl,
                          width: 6.w,
                          height: 6.w,
                        ),
                        SizedBox(width: 1.w),
                        Text(
                          description,
                          style: TextStyle(
                            fontSize: 12.sp,
                            fontFamily: "Cabin",
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Text(
                          price,
                          style: TextStyle(
                            fontSize: 13.sp,
                            fontFamily: "Cabin",
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        SizedBox(width: 7.w),
                        const ArticlePage()
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}