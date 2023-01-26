import 'package:flutter/material.dart';

class reusable_container extends StatelessWidget {
  // const reusable_container({Key? key,}) : super(key: key);
  reusable_container({required this.colrs,required this.childCard});

  final Color colrs;
  final Widget childCard;
  @override
  Widget build(BuildContext context) {
    return Container(
      child: childCard,
      margin: const EdgeInsets.all(15.0),
      decoration: BoxDecoration(
        color: colrs,
        borderRadius: BorderRadius.circular(10.0),
      ),

    );
  }
}