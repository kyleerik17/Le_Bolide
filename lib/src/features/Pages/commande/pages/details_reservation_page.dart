import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class ReservationDetails extends StatelessWidget {
  const ReservationDetails({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.symmetric(vertical: 2.h, horizontal: 5.w),
              child: Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  'Détails réservation',
                  style: TextStyle(
                    fontSize: 14.sp,
                    fontWeight: FontWeight.w600,
                    fontFamily: 'Cabin',
                  ),
                ),
              ),
            ),
            Container(
              padding: EdgeInsets.all(5.w),
              margin: EdgeInsets.symmetric(horizontal: 5.w),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(1.5.w),
              ),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  buildDetailRow('Référence', 'MDX 987 992'),
                  const Divider(color: Colors.grey),
                  buildDetailRow('Etablissement', 'Le Footeux'),
                  const Divider(color: Colors.grey),
                  buildDetailRow('Adresse', 'Zone 4'),
                  const Divider(color: Colors.white),
                  buildDetailRow('Terrain', 'T-01'),
                  const Divider(color: Colors.grey),
                  buildDetailRow('Date', '16/06/2024'),
                  const Divider(color: Colors.grey),
                  buildDetailRow('Heure', '13:00'),
                  const Divider(color: Colors.grey),
                  buildDetailRow('Durée', '60 minutes'),
                  const Divider(color: Colors.grey),
                  SizedBox(
                    height: 3.h,
                  ),
                  Center(
                    child: Image.asset(
                      'assets/images/qr.png',
                      width: 60.w,
                      height: 30.w,
                    ),
                  ),
                ],
              ),
            ),
            const Spacer(),
            Center(
              child: TextButton(
                onPressed: () {},
                child: Text(
                  'Annuler la réservation',
                  style: TextStyle(
                    color: Colors.red,
                    fontSize: 13.sp,
                    fontWeight: FontWeight.w400,
                    fontFamily: 'Cabin',
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 2.h,
            )
          ],
        ),
      ),
    );
  }

  Widget buildDetailRow(String title, String value) {
    const textStyle = TextStyle(
        fontWeight: FontWeight.w500,
        fontFamily: 'Poppins',
        color: Colors.black,
        fontSize: 15);

    const specialTextStyle = TextStyle(
        fontWeight: FontWeight.w400,
        fontFamily: 'Cabin',
        color: Colors.black,
        fontSize: 15);

    final specialValues = {
      'MDX 987 992',
      'Le Footeux',
      'Zone 4',
      'T-01',
      '16/06/2024',
      '13:00',
      '60 minutes',
    };

    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          title,
          style: textStyle,
        ),
        Text(
          value,
          style: specialValues.contains(value) ? specialTextStyle : textStyle,
        ),
      ],
    );
  }
}
