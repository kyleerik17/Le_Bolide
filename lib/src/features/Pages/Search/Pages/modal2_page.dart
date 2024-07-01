import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class Modal2Page extends StatefulWidget {
  const Modal2Page({super.key});

  @override
  _Modal2PageState createState() => _Modal2PageState();
}

class _Modal2PageState extends State<Modal2Page> {
  String _selectedOption = 'Pertinence';

  @override
  Widget build(BuildContext context) {
    return FractionallySizedBox(
      heightFactor: 0.7,
      child: Padding(
        padding: EdgeInsets.all(4.w),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child: Text(
                'Options de tri',
                style: TextStyle(fontSize: 16.sp, fontWeight: FontWeight.bold),
              ),
            ),
            SizedBox(height: 3.h),
            _buildRadioOption('Pertinence'),
            SizedBox(height: 2.h),
            _buildRadioOption('Prix croissant'),
            SizedBox(height: 2.h),
            _buildRadioOption('Prix décroissant'),
            SizedBox(height: 2.h),
            _buildRadioOption('Popularité'),
            SizedBox(height: 2.h),
            _buildRadioOption('Meilleures notes'),
            Spacer(),
            Center(
              child: TextButton(
                onPressed: () {
                  // Navigator.push(
                  //   context,
                  //   MaterialPageRoute(
                  //       builder: (context) => const FindSearchPlusPage()),
                  // );
                },
                style: TextButton.styleFrom(
                  backgroundColor: const Color(0xFF1A1A1A),
                  padding:
                      EdgeInsets.symmetric(vertical: 1.0.h, horizontal: 20.w),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(1.5.w),
                  ),
                ),
                child: Text(
                  "Valider",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 14.sp,
                    fontFamily: 'Inter',
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildRadioOption(String value) {
    return GestureDetector(
      onTap: () {
        setState(() {
          _selectedOption = value;
        });
      },
      child: Row(
        children: [
          Image.asset(
            _selectedOption == value
                ? 'assets/icons/cs1.png'
                : 'assets/icons/unc.png',
            width: 6.w,
            height: 6.w,
          ),
          SizedBox(width: 4.w),
          Text(value,
              style: TextStyle(
                  fontSize: 12.sp,
                  fontFamily: 'Poppins',
                  fontWeight: FontWeight.w500)),
        ],
      ),
    );
  }
}
