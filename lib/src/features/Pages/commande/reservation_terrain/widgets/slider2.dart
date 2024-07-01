import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class Slider2Page extends StatefulWidget {
  const Slider2Page({Key? key}) : super(key: key);

  @override
  _Slider2State createState() => _Slider2State();
}

class _Slider2State extends State<Slider2Page> {
  int _currentIndex = 0;

  final List<String> _images = [
    'assets/images/ima1.jpeg',
    'assets/images/ima1.jpeg',
    'assets/images/ima1.jpeg',
    'assets/images/ima1.jpeg',
    'assets/images/ima1.jpeg',
    'assets/images/ima1.jpeg',
  ];

  void _previousImage() {
    if (_currentIndex > 0) {
      setState(() {
        _currentIndex--;
      });
    }
  }

  void _nextImage() {
    if (_currentIndex < _images.length - 1) {
      setState(() {
        _currentIndex++;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: MediaQuery.of(context).size.height * 0.2,
          child: PageView.builder(
            itemCount: _images.length,
            onPageChanged: (index) {
              setState(() {
                _currentIndex = index;
              });
            },
            itemBuilder: (context, index) {
              return SlideItem(
                image: _images[index],
                onPreviousPressed: _previousImage,
                onNextPressed: _nextImage,
              );
            },
          ),
        ),
        SizedBox(height: 1.h),
      ],
    );
  }
}

class SlideItem extends StatelessWidget {
  final String image;
  final VoidCallback? onPreviousPressed;
  final VoidCallback? onNextPressed;

  const SlideItem({
    Key? key,
    required this.image,
    this.onPreviousPressed,
    this.onNextPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Positioned.fill(
          child: ClipRRect(
            borderRadius: BorderRadius.circular(0.5.h),
            child: Stack(
              fit: StackFit.expand,
              children: [
                Image.asset(
                  image,
                  fit: BoxFit.cover,
                ),
              ],
            ),
          ),
        ),
        Positioned(
          top: 30,
          left: 1,
          child: GestureDetector(
            onTap: onPreviousPressed,
            child: Image.asset(
              'assets/icons/gc.png',
              width: 10.w,
              height: 12.h,
              color: Colors.white,
            ),
          ),
        ),
        Positioned(
          top: 30,
          right: 1,
          child: GestureDetector(
            onTap: onNextPressed,
            child: Image.asset(
              'assets/icons/dt.png',
              width: 10.w,
              height: 12.h,
            ),
          ),
        ),
        Stack(
          children: [
            Positioned(
              bottom: 10,
              left: 140,
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.black,
                  borderRadius: BorderRadius.circular(1.5.w),
                ),
                padding: EdgeInsets.symmetric(vertical: 1.5.w, horizontal: 5.w),
                child: Text(
                  'Terrain T05',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 11.sp,
                    fontFamily: "Cabin",
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
