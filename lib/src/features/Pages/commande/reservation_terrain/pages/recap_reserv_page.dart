import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import '../widgets/appbar_reserv.dart';
import '../widgets/slider2.dart';

class RecapReservPage extends StatelessWidget {
  const RecapReservPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF7F8F9),
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const AppBarReserv(),
            Padding(
              padding: EdgeInsets.all(4.w),
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Récapitulatif",
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 15.sp,
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    SizedBox(height: 1.h),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Le Footeux, Zone 4",
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 12.sp,
                                  fontFamily: 'Poppins',
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                              Row(
                                children: [
                                  Image.asset(
                                    'assets/icons/ic.png',
                                    height: 4.w,
                                  ),
                                  SizedBox(width: 1.w),
                                  Text(
                                    "Football",
                                    style: TextStyle(
                                      fontFamily: "Cabin",
                                      fontSize: 10.sp,
                                      fontWeight: FontWeight.w400,
                                    ),
                                  ),
                                  SizedBox(width: 2.w),
                                  Icon(Icons.access_time, size: 4.w),
                                  SizedBox(width: 0.5.w),
                                  Text(
                                    "08:00 / 21:00",
                                    style: TextStyle(
                                      fontFamily: "Cabin",
                                      fontSize: 10.sp,
                                      fontWeight: FontWeight.w400,
                                    ),
                                  ),
                                  SizedBox(width: 2.w),
                                  Image.asset(
                                    'assets/icons/gps.png',
                                    color: Colors.black,
                                    width: 4.w,
                                  ),
                                  SizedBox(width: 1.w),
                                  Text(
                                    'à 0,2 km',
                                    style: TextStyle(
                                      fontFamily: "Cabin",
                                      fontSize: 11.sp,
                                      fontWeight: FontWeight.w400,
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                        Image.asset(
                          'assets/icons/oc1.png',
                        ),
                      ],
                    ),
                    SizedBox(height: 1.h),
                    const Slider2Page(),
                    SizedBox(height: 1.h),
                  ],
                ),
              ),
            ),
            Expanded(
              child: SafeArea(
                child: Container(
                  color: Colors.white,
                  child: Column(
                    children: [
                      _buildRow("Référence", "MDX 987 992"),
                      _buildRow("Date", "15 Juin 2024"),
                      _buildRow("Terrain", "T05"),
                      _buildRow("Heure de début", "11:30"),
                      _buildRow("Durée", "60 minutes"),
                      _buildRowWithButton(
                        Text(
                          'Localisation',
                          style: TextStyle(
                            fontWeight: FontWeight.w500,
                            fontFamily: 'Cabin',
                            color: Colors.black,
                            fontSize: 12.sp,
                          ),
                        ),
                        Text(
                          'Voir la localisation',
                          style: TextStyle(
                            fontFamily: 'Cabin',
                            color: const Color(0xFFEA7C17),
                            fontWeight: FontWeight.w600,
                            fontSize: 12.sp,
                          ),
                        ),
                      ),
                      SizedBox(height: 1.h),
                      Container(
                        padding: EdgeInsets.symmetric(vertical: 1.h),
                        width: 92.w,
                        child: const Divider(
                          color: Color(0xFFE0E3E6),
                          thickness: 1,
                          height: 1,
                        ),
                      ),
                      SizedBox(height: 1.h),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Padding(
                            padding: EdgeInsets.symmetric(
                                vertical: 1.h, horizontal: 4.w),
                            child: Expanded(
                              child: Text(
                                'TOTAL',
                                style: TextStyle(
                                  fontSize: 14.sp,
                                  fontFamily: 'Poppins',
                                  color: const Color(0xFF1A1A1A),
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.symmetric(
                                vertical: 1.h, horizontal: 4.w),
                            child: Text(
                              '68 400 F',
                              style: TextStyle(
                                fontSize: 14.sp,
                                color: const Color(0xFF1A1A1A),
                                fontFamily: 'Poppins',
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildRow(String title, String value) {
    return Container(
      width: double.infinity,
      color: Colors.white,
      padding: EdgeInsets.symmetric(vertical: 0.5.h, horizontal: 4.w),
      child: Row(
        children: [
          Expanded(
            child: Text(
              title,
              textAlign: TextAlign.start,
              style: TextStyle(
                fontSize: 12.sp,
                fontFamily: "Poppins",
                fontWeight: FontWeight.w400,
              ),
            ),
          ),
          Text(
            value,
            textAlign: TextAlign.end,
            style: TextStyle(
              fontSize: 12.sp,
              fontFamily: "Cabin",
              fontWeight: FontWeight.w600,
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildRowWithButton(Widget title, Widget button) {
    return Container(
      width: double.infinity,
      color: Colors.white,
      padding: EdgeInsets.symmetric(vertical: 1.h, horizontal: 4.w),
      child: Row(
        children: [
          Expanded(child: title),
          button,
        ],
      ),
    );
  }
}
