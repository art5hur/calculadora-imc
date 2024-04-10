import 'package:flutter/material.dart';

import '../constants.dart';

class GenderSelect extends StatelessWidget {
  final IconData icon;
  final String gender;
  
  const GenderSelect({
    super.key, 
    required this.icon, 
    required this.gender
    });

  @override
  Widget build(BuildContext context) {
    return const Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(
          Icons.icon, 
                    size: 90,
                        ),
                        SizedBox(
                          height: 15,
                        ),
                        Text(
                          'Masculino', 
                          style: labelTextStyle,
                        ),
                      ],
                    );
  }
}