
import 'package:bmicalculator/results.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:bmicalculator/IconContent.dart';
import 'reusable.dart';
import 'dart:core';
import 'bottombtn.dart';
import 'brain.dart';

const lastcontainerheight =80.0;
const int  clr = 0xFF1D1E33;
const activeColor = Color(0xFF1D1E33);
const botomconatinercolor = Color(0xFFEB1555);
const inactivecardColour = Color(0xFF111328);

enum Gender{
  male,
  female;
}
int heght =180;
int weght = 50;
int age = 18;

class InputPage extends StatefulWidget {
   InputPage({Key? key}) : super(key: key);

  @override
  State<InputPage> createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  Color malecardcolor = activeColor;
  Color femalecardcolor = activeColor;

  void update(Gender selctedgender)
  {
    if(selctedgender == Gender.male)
      {
        if(malecardcolor == activeColor)
          {
            malecardcolor = inactivecardColour;
            femalecardcolor = activeColor;
          }
        else
          {
            malecardcolor = activeColor;
          }
      }
    if(selctedgender == Gender.female)
      {
        if(femalecardcolor == activeColor)
        {
          femalecardcolor = inactivecardColour;
          malecardcolor = activeColor;
        }
        else
        {
          femalecardcolor = activeColor;
        }
      }

  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('BMI Calculator'),
        backgroundColor: const Color(0xFF0A0E21),
      ),
      body: Column(
        children: [
          Expanded(
            flex: 1,
            child: Row(
              children:  [
                Expanded(
                  flex: 1,
                  child:  GestureDetector(
                    onTap: (){
                      setState(() {
                        update(Gender.male);
                      });

                    },
                    child: reusable_container(
                      colrs: malecardcolor,
                      childCard: Iconcontent(icon: FontAwesomeIcons.mars,label: 'MALE',)
                    ),
                  ),
                ),
                Expanded(
                  flex: 1,
                  child: GestureDetector(
                    onTap: (){
                      setState(() {
                        update(Gender.female);
                      });
                    },
                    child: reusable_container(colrs: femalecardcolor
                      ,
                      childCard: Iconcontent(icon: FontAwesomeIcons.venus,label: 'FEMALE',),
                ),
                  ),
                )
              ],
            ),
          ),
           Expanded(
            flex: 1,
            child: Container(
              margin: const EdgeInsets.all(15.0),
              decoration: BoxDecoration(
                color: Color(clr),
                borderRadius: BorderRadius.circular(10)
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text('Height',
                    style: TextStyle(
                      fontSize: 18.0,
                      color: Color(0xFF8D8E98)
                    ),
                  ),
                  SizedBox(
                    height: 15.0,
                  ),
                  Row(
                    mainAxisAlignment:  MainAxisAlignment.center,
                    // crossAxisAlignment:  CrossAxisAlignment.baseline,
                    textBaseline: TextBaseline.alphabetic,
                    children: [
                      Text(heght.toString(),
                      style: TextStyle(
                        fontSize: 50.0,
                        fontWeight: FontWeight.w900
                      ),
                      ),
                      Text('cm',
                      style: TextStyle(
                        fontSize: 18.0,
                        color: Color(0xFF8D8E98),
                      ),)
                    ],
                  ),
                  SliderTheme(
                    data: SliderTheme.of(context).copyWith(
                        activeTrackColor: Colors.white,
                        thumbColor: Color(0xFFEB1555),
                        overlayColor: Color(0x15EB1555),
                      thumbShape: RoundSliderThumbShape(enabledThumbRadius : 15.0 ),
                      overlayShape: RoundSliderOverlayShape(overlayRadius: 30.0),

                    ),
                    child: Slider(
                      value: heght.toDouble(),
                      min: 120.0,
                      max: 220.0,
                      // activeColor: Colors.white,
                      inactiveColor: Color(0xFF8D8E98),
                      onChanged: (double newvalue){
                        setState(() {
                          heght = newvalue.round();
                        });
                    },
                    ),
                  ),
                ],
              ),
            )
          ),
          Expanded(
            flex: 1,
            child: Row(
              children:  [
                Expanded(
                  flex: 1,
                  child: reusable_container(colrs: Color(clr),
                    childCard: Column(
                      // crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text('WEIGHT',
                        style: TextStyle(
                            fontSize: 18.0,
                            color: Color(0xFF8D8E98)
                        ),),
                        SizedBox(
                          height: 10.0,
                        ),
                        Text(weght.toString(),style: TextStyle(
                            fontSize: 50.0,
                            fontWeight: FontWeight.w900
                        ),
                        ),
                        Row(
                          children: [
                            ElevatedButton(onPressed: (){
                              setState(() {
                                weght--;
                              });
                            },
                              child: Icon(
                              Icons.remove,color: Colors.white,
                                size: 45,
                            ),
                              style: ElevatedButton.styleFrom(
                                shape: CircleBorder(),
                                backgroundColor: Color(0xFF8D8E98),
                                foregroundColor: Colors.white
                              ),
                            ),
                            ElevatedButton(onPressed: (){
                              setState(() {
                                weght++;
                              });
                            },
                                child: Icon(
                                  Icons.add,
                                  color: Colors.white,
                                  size: 45,
                                ),
                              style: ElevatedButton.styleFrom(
                                shape: CircleBorder(),
                                backgroundColor: Color(0xFF8D8E98)
                              ),
                            )
                          ],
                        )
                      ],
                    ),
                      ),
                ),
                Expanded(
                  flex: 1,
                  child: reusable_container(colrs: Color(clr),
                        childCard: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text('AGE',
                            style: TextStyle(
                              fontSize: 18.0,
                                color: Color(0xFF8D8E98)
                            ),
                            ),
                            SizedBox(
                              height: 10.0,
                            ),
                            Text(age.toString(),
                            style: TextStyle(
                              fontWeight: FontWeight.w900,
                              fontSize: 50.0,
                            ),
                            ),
                            Row(
                              children: [
                                ElevatedButton(onPressed: (){
                                  setState(() {
                                    age--;
                                  });
                                },
                                  child: Icon(
                                  Icons.remove,color:Colors.white,
                                  size: 45,
                                ),style: ElevatedButton.styleFrom(
                                  shape: CircleBorder(),
                                  backgroundColor: Color(0xFF8D8E98)
                                ),
                                ),
                                ElevatedButton(onPressed: (){
                                  setState(() {
                                    age++;
                                  });
                                }, child: Icon(
                                  Icons.add,size: 45,color: Colors.white,
                                ),
                                  style: ElevatedButton.styleFrom(
                                    shape: CircleBorder(),
                                    backgroundColor: Color(0xFF8D8E98)
                                  ),
                                )

                              ],
                            )
                          ],
                        ),
                      ),
                ),
              ],
            ),
          ),
          bottonbtn(txt:'CALCULATE',
            onTap: ()
            {
              Brain calc = Brain(height: heght, weight: weght);
              Navigator.push(context, MaterialPageRoute(builder: (context) => Results_page(
                bmiResult: calc.calculatebmi(),
                result: calc.getresult(),
                interpet: calc.getInter(),
              )));
              } ,)
        ],

      )
    );
  }
}


