import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class ModalPage extends StatelessWidget {
  const ModalPage({super.key});

  @override
  Widget build(BuildContext context) {
    return DraggableScrollableSheet(
      initialChildSize: 0.7,
      minChildSize: 0.7,
      maxChildSize: 1.0,
      expand: false,
      builder: (BuildContext context, ScrollController scrollController) {
        return SingleChildScrollView(
          controller: scrollController,
          child: Padding(
            padding: EdgeInsets.all(4.w),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                  Text(
                    "Filtres",
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 16.sp,
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.w600),
                  ),
                  SizedBox(width: 10.w),
                  Image.asset(
                    'assets/icons/fltr.png',
                    color: Colors.black,
                  ),
                ]),
                FilterSection(
                  title: 'Marques',
                  options: [
                    'Michelin',
                    'Hankook',
                    'Continental',
                    'Goodyear',
                    'Bridgestone',
                    'Maxxis'
                  ],
                ),
                FilterSection(
                  title: 'Types de véhicules',
                  options: [
                    'Auto',
                    '4X4/SUV',
                    'Camion léger',
                    'Camion',
                    'Moto/Scooter'
                  ],
                ),
                FilterSection(
                  title: 'Types de pneus',
                  options: ['Toutes saisons', 'Pneus été', 'Pneus hiver'],
                ),
                SizedBox(height: 2.h),
                Text('Dimensions',
                    style: TextStyle(
                        fontSize: 12.sp, fontWeight: FontWeight.bold)),
                SizedBox(height: 1.h),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    DimensionDropdown(label: 'Largeur', values: ['205']),
                    DimensionDropdown(label: 'Hauteur', values: ['55']),
                    DimensionDropdown(label: 'Diamètre', values: ['55']),
                  ],
                ),
                SizedBox(height: 2.h),
                Center(
                  child: ElevatedButton(
                    onPressed: () {
                      // Ajoutez l'action de validation ici
                    },
                    child: Text('Valider', style: TextStyle(fontSize: 12.sp)),
                    style: ElevatedButton.styleFrom(
                      padding:
                          EdgeInsets.symmetric(horizontal: 10.w, vertical: 2.h),
                    ),
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

class FilterSection extends StatelessWidget {
  final String title;
  final List<String> options;

  FilterSection({required this.title, required this.options});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(bottom: 2.h),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height: 2.h),
          Text(title,
              style: TextStyle(fontSize: 12.sp, fontWeight: FontWeight.bold)),
          SizedBox(height: 1.h),
          Wrap(
            spacing: 3.w,
            runSpacing: 1.h,
            children: options
                .map((option) => FilterChip(
                      label: Text(option,
                          style: TextStyle(
                              fontSize: 10.sp,
                              color: Colors.black,
                              fontFamily: 'Poppins',
                              fontWeight: FontWeight.w500)),
                      backgroundColor: Colors.white,
                      shape: RoundedRectangleBorder(
                        side: BorderSide(
                          color: Colors.black,
                        ),
                        borderRadius: BorderRadius.circular(1.5.w),
                      ),
                      onSelected: (bool value) {
                        // Ajoutez l'action de sélection ici
                      },
                    ))
                .toList(),
          ),
        ],
      ),
    );
  }
}

class DimensionDropdown extends StatelessWidget {
  final String label;
  final List<String> values;

  DimensionDropdown({required this.label, required this.values});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(label, style: TextStyle(fontSize: 10.sp)),
        SizedBox(height: 0.5.h),
        DropdownButton<String>(
          value: values.first,
          items: values.map((String value) {
            return DropdownMenuItem<String>(
              value: value,
              child: Text(value, style: TextStyle(fontSize: 10.sp)),
            );
          }).toList(),
          onChanged: (String? newValue) {},
        ),
      ],
    );
  }
}
