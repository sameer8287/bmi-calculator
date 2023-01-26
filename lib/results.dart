import 'package:bmicalculator/reusable.dart';
import 'package:flutter/material.dart';
// import 'inputpage.dart';
import 'bottombtn.dart';
class Results_page extends StatelessWidget {

  Results_page({required this.bmiResult,required this.result,required this.interpet});

  final String bmiResult ;
  final String result;
  final String interpet;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Expanded(
              child: Container(
                padding: EdgeInsets.all(15.0),
                alignment: Alignment.bottomLeft,
                child: Text('YOUR RESULT',style: TextStyle(fontSize: 35,fontWeight: FontWeight.bold),),
              ),
            ),
            Expanded(
              flex: 5,
                child:reusable_container(colrs: Color(0xFF1D1E33),
                  childCard: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(result.toUpperCase(),
                        style: TextStyle(
                          color: Colors.green,
                          fontSize: 22,
                          fontWeight: FontWeight.bold
                        ),),
                      Text(bmiResult,
                      style: TextStyle(
                        fontSize: 100,
                        fontWeight: FontWeight.bold
                      ),),
                      Text(interpet,
                        textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 22,
                      ),)
                    ],
                  ),) 
            ),
            bottonbtn(txt: 'RE-CALCULATE',
              onTap: () {
                Navigator.pop(context);
              },)
          ],
        ),
      )
    );
  }
}
