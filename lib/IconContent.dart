import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
class Iconcontent extends StatelessWidget {

  Iconcontent({required this.icon,required this.label});
  final IconData icon;
  final String label;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        FaIcon(icon ,size: 60.0,),
        SizedBox(
          height: 15.0,
        ),
        Text(label,
          style: TextStyle(
              fontSize: 18.0,
              color: Color(0xFF8D8E98)
          ),)
      ],
    );
  }
}
