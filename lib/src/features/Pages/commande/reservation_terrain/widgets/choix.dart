import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ChoixPage extends StatefulWidget {
  const ChoixPage({super.key});

  @override
  _ChoixPageState createState() => _ChoixPageState();
}

class _ChoixPageState extends State<ChoixPage> {
  String _selectedButton = 'Tout'; // État initial

  void _onButtonPressed(String buttonName) {
    setState(() {
      _selectedButton = buttonName;
    });
    
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Page de Choix'),
      ),
      body: Row(
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
          SizedBox(width: 2.w),
          TextButton(
            style: TextButton.styleFrom(
              backgroundColor: _selectedButton == 'En cours'
                  ? Colors.black
                  : Colors.white,
              side: const BorderSide(color: Colors.grey),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(0.5.h),
              ),
              padding: EdgeInsets.symmetric(horizontal: 4.w),
              minimumSize: Size(0, 3.8.h),
            ),
            onPressed: () => _onButtonPressed('En cours'),
            child: Text(
              'En cours',
              style: TextStyle(
                color: _selectedButton == 'En cours'
                    ? Colors.white
                    : Colors.black,
              ),
            ),
          ),
          SizedBox(width: 2.w),
          TextButton(
            style: TextButton.styleFrom(
              backgroundColor: _selectedButton == 'Terminées'
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
            onPressed: () => _onButtonPressed('Terminées'),
            child: Text(
              'Terminées',
              style: TextStyle(
                color: _selectedButton == 'Terminées'
                    ? Colors.white
                    : Colors.black,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
