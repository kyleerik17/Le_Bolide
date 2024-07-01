import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class ModalPage extends StatelessWidget {
  const ModalPage({super.key});

  @override
  Widget build(BuildContext context) {
    return DraggableScrollableSheet(
      initialChildSize: 0.7,
      minChildSize: 0.7,
      maxChildSize: 0.7,
      expand: false,
      builder: (BuildContext context, ScrollController scrollController) {
        return SingleChildScrollView(
          controller: scrollController,
          child: Padding(
            padding: EdgeInsets.all(4.w),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Container(
                  decoration: const BoxDecoration(
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(4),
                      topRight: Radius.zero,
                      bottomLeft: Radius.zero,
                      bottomRight: Radius.zero,
                    ),
                    color: Colors.transparent,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Expanded(
                        child: Text(
                          "Filtres",
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 16.sp,
                            fontFamily: 'Poppins',
                            fontWeight: FontWeight.w600,
                          ),
                          textAlign: TextAlign.center,
                        ),
                      ),
                      GestureDetector(
                        onTap: () {
                          Navigator.pop(context);
                        },
                        child: Container(
                          decoration: const BoxDecoration(
                            shape: BoxShape.circle,
                            color: Color(0xFFEBEBEB),
                          ),
                          padding: const EdgeInsets.all(8),
                          child: Image.asset(
                            'assets/icons/close.png',
                            width: 12.w,
                            height: 12.w,
                            color: Colors.black,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 16),
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
                const SizedBox(height: 16),
                Text(
                  'Dimensions',
                  style: TextStyle(
                    fontSize: 13.sp,
                    fontWeight: FontWeight.w600,
                    fontFamily: 'Poppins',
                  ),
                  textAlign: TextAlign.center,
                ),
                const SizedBox(height: 8),
                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      DimensionInput(label: 'Largeur', options: ['205']),
                      DimensionInput(label: 'Hauteur', options: ['55']),
                      DimensionInput(label: 'Diamètre', options: ['55']),
                    ],
                  ),
                ),
                const SizedBox(height: 16),
                Center(
              child: TextButton(
                onPressed: () {
                 
                },
                style: TextButton.styleFrom(
                  backgroundColor: const Color(0xFF1A1A1A),
                  padding:
                      EdgeInsets.symmetric(vertical: 1.0.h, horizontal: 20.w),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(1.w),
                  ),
                ),
                child: Text(
                  "Valider",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 14.sp,
                    fontWeight: FontWeight.w500,
                    fontFamily: 'Cabin',
                  ),
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
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      margin: const EdgeInsets.only(bottom: 16),
      decoration: const BoxDecoration(
        border: Border(
          bottom: BorderSide(width: 1, color: Colors.grey),
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: TextStyle(
              fontSize: 13.sp,
              fontWeight: FontWeight.w600,
              fontFamily: 'Poppins',
            ),
            textAlign: TextAlign.center,
          ),
          const SizedBox(height: 8),
          Wrap(
            spacing: 8,
            runSpacing: 8,
            children: options
                .map((option) => FilterChip(
                      label: Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 8, vertical: 4),
                        child: Text(
                          option,
                          style: TextStyle(
                            fontSize: 10.sp,
                            color: Colors.black,
                            fontFamily: 'Poppins',
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ),
                      backgroundColor: Colors.white,
                      shape: RoundedRectangleBorder(
                        side: const BorderSide(
                          color: Color(0xFFC9CDD2),
                        ),
                        borderRadius: BorderRadius.circular(4),
                      ),
                      onSelected: (bool value) {},
                    ))
                .toList(),
          ),
        ],
      ),
    );
  }
}

class DimensionInput extends StatelessWidget {
  final String label;
  final List<String> options;

  DimensionInput({required this.label, required this.options});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(label),
        SizedBox(height: 8),
        Container(
          width: 106,
          height: 40,
          padding: EdgeInsets.symmetric(horizontal: 12),
          decoration: BoxDecoration(
            border: Border.all(color: Color(0xFFC9CDD2), width: 1),
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(4),
              topRight: Radius.circular(0),
              bottomLeft: Radius.circular(0),
              bottomRight: Radius.circular(0),
            ),
          ),
          child: DropdownButton<String>(
            value: options[0],
            onChanged: (String? newValue) {},
            items: options.map<DropdownMenuItem<String>>((String value) {
              return DropdownMenuItem<String>(
                value: value,
                child: Text(value),
              );
            }).toList(),
            underline: SizedBox(), // To remove the default underline
            isExpanded: true, // To make the dropdown fill the container width
          ),
        ),
      ],
    );
  }
}
