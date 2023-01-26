import 'package:flutter/material.dart';
import 'inputpage.dart';

class bottonbtn extends StatelessWidget {
  bottonbtn({required this.txt,required this.onTap});
  final txt;
  final onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        child: Center(
          child: Text(txt,style: TextStyle(
              fontSize: 18.0
          ),),
        ),
        width: double.infinity,
        height: lastcontainerheight,
        margin: EdgeInsets.only(top: 10.0),
        color: botomconatinercolor,
      ),
    );
  }
}