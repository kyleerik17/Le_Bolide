
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

import '../widgets/slider1.dart';
import 'pages.dart';


class ReservTerrainPage extends StatefulWidget {
  const ReservTerrainPage({Key? key}) : super(key: key);

  @override
  // ignore: library_private_types_in_public_api
  _ReservTerrainPageState createState() => _ReservTerrainPageState();
}

class _ReservTerrainPageState extends State<ReservTerrainPage> {
  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.all(4.w),
        child: Column(
          children: [
            SizedBox(height: 2.h),
            Row(
              children: [
                Expanded(
                  child: Text(
                    'Réservation',
                    style: TextStyle(
                      fontSize: 14.sp,
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
                Column(
                  children: [
                    GestureDetector(
                      onTap: () {
                        Navigator.pop(context);
                      },
                      child: Container(
                        width: 10.w,
                        height: 10.w,
                        decoration: const BoxDecoration(
                          shape: BoxShape.circle,
                          color: Color(0xFFEBEBEB),
                        ),
                        child: Center(
                          child: Image.asset(
                            'assets/icons/close.png',
                            color: const Color(0xFF1F1F1F),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
            SizedBox(height: 2.h),
            Row(crossAxisAlignment: CrossAxisAlignment.start, children: [
              Text(
                "Le Footeux, Zone 4",
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 12.sp,
                  fontFamily: 'Poppins',
                  fontWeight: FontWeight.w500,
                ),
                textAlign: TextAlign.left,
              ),
            ]),
            Row(
              children: [
                Icon(Icons.sports_soccer, size: 5.w),
                Row(
                  children: [
                    SizedBox(width: 1.w),
                    Text(
                      "Football",
                      style: TextStyle(
                        fontFamily: "Cabin",
                        fontSize: 10.sp,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ],
                ),
                SizedBox(width: 2.w),
                Row(
                  children: [
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
                  ],
                ),
                SizedBox(width: 2.w),
                Row(
                  children: [
                    Image.asset(
                      'assets/icons/gps.png',
                      color: Colors.black,
                    ),
                    SizedBox(width: 1.w),
                    Text(
                      'a 0,2 km',
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
            SizedBox(height: 2.h),
            Row(crossAxisAlignment: CrossAxisAlignment.start, children: [
              Text(
                "Terrains",
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 11.sp,
                  fontFamily: 'Poppins',
                  fontWeight: FontWeight.w500,
                ),
                textAlign: TextAlign.left,
              ),
            ]),
            SizedBox(height: 1.h),
            const Slider1Page(),
            SizedBox(height: 2.h),
            Row(crossAxisAlignment: CrossAxisAlignment.start, children: [
              Text(
                "Dates",
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 13.sp,
                  fontFamily: 'Cabin',
                  fontWeight: FontWeight.w600,
                ),
                textAlign: TextAlign.left,
              ),
            ]),
            SizedBox(height: 1.h),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                _buildDateButton(
                  context,
                  "Auj.",
                  "15",
                  isSelected: selectedIndex == 0,
                  onPressed: () => setSelectedIndex(0),
                ),
                _buildDateButton(
                  context,
                  "Mer",
                  "16",
                  isSelected: selectedIndex == 1,
                  onPressed: () => setSelectedIndex(1),
                ),
                _buildDateButton(
                  context,
                  "Jeu",
                  "17",
                  isSelected: selectedIndex == 2,
                  onPressed: () => setSelectedIndex(2),
                ),
                _buildDateButton(
                  context,
                  "Ven",
                  "18",
                  isSelected: selectedIndex == 3,
                  onPressed: () => setSelectedIndex(3),
                ),
                SizedBox(
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      onPrimary: Colors.black,
                      backgroundColor: Colors.white,
                      side: const BorderSide(),
                      padding: EdgeInsets.symmetric(
                          vertical: 1.8.h, horizontal: 4.w),
                    ),
                    onPressed: () {},
                    child: Column(
                      children: [
                        Text(
                          '+',
                          style: TextStyle(
                            fontSize: 25.sp,
                            fontFamily: 'Cabin',
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        SizedBox(height: 0.5.h),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 2.h),
            Row(crossAxisAlignment: CrossAxisAlignment.start, children: [
              Text(
                "Heure de début",
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 12.sp,
                  fontFamily: 'Poppins',
                  fontWeight: FontWeight.w500,
                ),
                textAlign: TextAlign.left,
              ),
            ]),
            SizedBox(height: 1.h),
            DropdownButtonFormField<String>(
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
                contentPadding:
                    EdgeInsets.symmetric(vertical: 12.0, horizontal: 16.0),
              ),
              hint: const Text(
                'Choisissez votre modèle',
                style: TextStyle(
                  fontSize: 16.0,
                  color: Color(0xFF94979E),
                  fontFamily: 'Cabin',
                  fontWeight: FontWeight.w400,
                ),
              ),
              icon: Image.asset(
                'assets/icons/dw.png',
                color: const Color(0xFF45484F),
                width: 4.w,
                height: 4.w,
              ),
              items: [
                DropdownMenuItem(
                  value: '1',
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        '08:00',
                        style: TextStyle(
                          fontSize: 12.sp,
                          color: const Color(0xFF94979E),
                          fontFamily: 'Cabin',
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                      Text(
                        'Disponible',
                        style: TextStyle(
                          fontSize: 12.sp,
                          color: const Color(0xFF26BF56),
                          fontFamily: 'Cabin',
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ],
                  ),
                ),
                DropdownMenuItem(
                  value: '2',
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        '09:00',
                        style: TextStyle(
                          fontSize: 12.sp,
                          color: const Color(0xFF94979E),
                          fontFamily: 'Cabin',
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                      Text(
                        'Disponible',
                        style: TextStyle(
                          fontSize: 12.sp,
                          color: const Color(0xFF26BF56),
                          fontFamily: 'Cabin',
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ],
                  ),
                ),
                DropdownMenuItem(
                  value: '3',
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        '10:00',
                        style: TextStyle(
                          fontSize: 12.sp,
                          color: const Color(0xFF94979E),
                          fontFamily: 'Cabin',
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                      Text(
                        'Disponible',
                        style: TextStyle(
                          fontSize: 12.sp,
                          color: const Color(0xFF26BF56),
                          fontFamily: 'Cabin',
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ],
                  ),
                ),
                DropdownMenuItem(
                  value: '4',
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        '11:00',
                        style: TextStyle(
                          fontSize: 12.sp,
                          color: const Color(0xFF94979E),
                          fontFamily: 'Cabin',
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                      Text(
                        'Disponible',
                        style: TextStyle(
                          fontSize: 12.sp,
                          color: const Color(0xFF26BF56),
                          fontFamily: 'Cabin',
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
              onChanged: (value) {},
              style: TextStyle(
                fontSize: 11.sp,
                color: const Color(0xFF94979E),
                fontFamily: 'Cabin',
                fontWeight: FontWeight.w400,
              ),
            ),
            SizedBox(height: 2.h),
            Row(crossAxisAlignment: CrossAxisAlignment.start, children: [
              Text(
                "Durée",
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 12.sp,
                  fontFamily: 'Poppins',
                  fontWeight: FontWeight.w500,
                ),
                textAlign: TextAlign.left,
              ),
            ]),
            SizedBox(height: 1.h),
            DropdownButtonFormField<String>(
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
                contentPadding:
                    EdgeInsets.symmetric(vertical: 12.0, horizontal: 16.0),
              ),
              hint: Text(
                'Choisissez la duréé de jeu',
                style: TextStyle(
                  fontSize: 12.sp,
                  color: const Color(0xFF94979E),
                  fontFamily: 'Cabin',
                  fontWeight: FontWeight.w400,
                ),
              ),
              icon: Image.asset(
                'assets/icons/dw.png',
                color: const Color(0xFF45484F),
                width: 4.w,
                height: 4.w,
              ),
              items: [
                DropdownMenuItem(
                  value: '1',
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        '08:00',
                        style: TextStyle(
                          fontSize: 12.sp,
                          color: const Color(0xFF94979E),
                          fontFamily: 'Cabin',
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                      Text(
                        'Disponible',
                        style: TextStyle(
                          fontSize: 12.sp,
                          color: const Color(0xFF26BF56),
                          fontFamily: 'Cabin',
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ],
                  ),
                ),
                DropdownMenuItem(
                  value: '2',
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        '09:00',
                        style: TextStyle(
                          fontSize: 12.sp,
                          color: const Color(0xFF94979E),
                          fontFamily: 'Cabin',
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                      Text(
                        'Disponible',
                        style: TextStyle(
                          fontSize: 12.sp,
                          color: const Color(0xFF26BF56),
                          fontFamily: 'Cabin',
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ],
                  ),
                ),
                DropdownMenuItem(
                  value: '3',
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        '10:00',
                        style: TextStyle(
                          fontSize: 12.sp,
                          color: const Color(0xFF94979E),
                          fontFamily: 'Cabin',
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                      Text(
                        'Disponible',
                        style: TextStyle(
                          fontSize: 12.sp,
                          color: const Color(0xFF26BF56),
                          fontFamily: 'Cabin',
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ],
                  ),
                ),
                DropdownMenuItem(
                  value: '4',
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Text(
                        '11:00',
                        style: TextStyle(
                          fontSize: 16.0,
                          color: Color(0xFF94979E),
                          fontFamily: 'Cabin',
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                      Text(
                        'Disponible',
                        style: TextStyle(
                          fontSize: 12.sp,
                          color: const Color(0xFF26BF56),
                          fontFamily: 'Cabin',
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
              onChanged: (value) {},
              style: const TextStyle(
                fontSize: 12.0,
                color: Color(0xFF94979E),
                fontFamily: 'Cabin',
                fontWeight: FontWeight.w400,
              ),
            ),
            const Spacer(),
            Row(
              children: [
                Expanded(
                  child: Container(
                    height: 4.h,
                    width: double.infinity,
                    color: Colors.white,
                    child: const Row(
                      mainAxisAlignment: MainAxisAlignment
                          .spaceBetween, // Espacement automatique entre les éléments internes
                      children: [
                        Text(
                          'TOTAL',
                          style: TextStyle(
                            fontSize: 16,
                            fontFamily: 'Poppins',
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        Spacer(),
                        Text(
                          '20 000 F',
                          style: TextStyle(
                            fontSize: 16,
                            fontFamily: 'Poppins',
                            fontWeight: FontWeight.w600,
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 3.h),
            ElevatedButton(
              onPressed: () {
                Navigator.pushReplacement(
                  context,
                  PageRouteBuilder(
                    transitionDuration: const Duration(milliseconds: 300),
                    pageBuilder: (_, __, ___) => const RecapReservPage(),
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
              },
              style: ElevatedButton.styleFrom(
                primary: const Color(0xFF1A1A1A),
                onPrimary: Colors.white,
                minimumSize: Size(50.w, 5.h),
                textStyle: const TextStyle(
                  fontSize: 18,
                  fontFamily: 'Cabin',
                  fontWeight: FontWeight.w600,
                ),
              ),
              child: const Text('Confirmer'),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildDateButton(BuildContext context, String day, String date,
      {bool isSelected = false, VoidCallback? onPressed}) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        primary: isSelected ? const Color(0xFFEA7C17) : Colors.white,
        onPrimary: isSelected ? Colors.white : Colors.black,
        side: BorderSide(
          color: isSelected ? const Color(0xFFEA7C17) : Colors.black,
        ),
        padding: EdgeInsets.symmetric(vertical: 1.5.h, horizontal: 5.w),
      ),
      onPressed: onPressed,
      child: Column(
        children: [
          Text(
            day,
            style: TextStyle(
              fontSize: 13.sp,
              fontFamily: 'Cabin',
              fontWeight: FontWeight.w600,
            ),
          ),
          SizedBox(height: 0.5.h),
          Text(
            date,
            style: TextStyle(
              fontSize: 15.sp,
              fontFamily: 'Cabin',
              fontWeight: FontWeight.w600,
            ),
          ),
        ],
      ),
    );
  }

  void setSelectedIndex(int index) {
    setState(() {
      selectedIndex = index;
    });
  }
}
