import 'package:flutter/cupertino.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'copy.dart';
import 'icon_contect.dart';
import 'constant.dart';
import 'result_page.dart';
import 'buttom_button.dart';
import 'round_button.dart';
import 'calculate_brain.dart';

enum Gender { male, female }

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  int height = 180;
  int weight = 60;
  int age = 20;

  // Color maleColor=inactivCaluor;
  // Color femaleColor=inactivCaluor;
  //gender=1=> male,gender=اي رقم female

  Gender selectgender;

  // void updateColor(Gender selectgender){
  //
  // //   if(selectgender==Gender.male){
  // //     if(maleColor==inactivCaluor){
  // //       maleColor=activCaluor;
  // //       femaleColor=inactivCaluor;
  // //     }else
  // //       maleColor=inactivCaluor;
  // //
  // //   }
  // //
  // // if(selectgender==Gender.female) {
  // //   if(femaleColor==inactivCaluor){
  // //     femaleColor=activCaluor;
  // //     maleColor=inactivCaluor;
  // //   }
  // //   else{
  // //     femaleColor=inactivCaluor;
  // //   }
  // //   }
  //
  // }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(" BMI CALCULATOR"),
      ),
      body: Column(crossAxisAlignment: CrossAxisAlignment.stretch, children: [
        Expanded(
            child: Row(
          children: [
            Expanded(
                child: Copy(
              colour:
                  selectgender == Gender.male ? kactivCaluor : kinactivCaluor,
              cardChild: IconContect(
                icon: FontAwesomeIcons.mars,
                lable: "MALE",
              ),
              onpress: () {
                setState(() {
                  selectgender = Gender.male;
                });
              },
            )),
            Expanded(
              child: Copy(
                onpress: () {
                  setState(() {
                    selectgender = Gender.female;
                  });
                },
                colour: selectgender == Gender.female
                    ? kactivCaluor
                    : kinactivCaluor,
                cardChild: IconContect(
                  icon: FontAwesomeIcons.venus,
                  lable: "FEMALE",
                ),
              ),
            ),
          ],
        )),
        Expanded(
            child: Copy(
          colour: kactivCaluor,
          cardChild: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "HEIGHT",
                style: labelTextStyle,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                //عشان اخلي الابناء فالصف علي نفس الخط يعني ليهم ارتفاعهم واحد من تحت
                crossAxisAlignment: CrossAxisAlignment.baseline,
                textBaseline: TextBaseline.alphabetic,
                children: [
                  Text(height.toString(), style: knumberTextStyle),
                  Text(
                    "cm",
                    style: labelTextStyle,
                  )
                ],
              ),
              SliderTheme(
                data: SliderTheme.of(context).copyWith(
                  activeTrackColor: Colors.white,
                  thumbColor: Color(0xffeb1555),
                  //لون الابهام لانه بياخد لون الجزء الكتيف فانا بغيره كده
                  overlayColor: Color(0x29eb1555),
                  //اللون ال حوالين الابهام لما بدوس عليه

                  thumbShape: RoundSliderThumbShape(enabledThumbRadius: 15.0),
                  overlayShape: RoundSliderOverlayShape(overlayRadius: 30.0),
                ),
                child: Slider(
                    value: height.toDouble(),
                    min: 120.0,

                    //      activeColor:  Colors.whitشلت ده وحطيت الكتيف تراك ال فوق عشان مياخدش اللون  بردو ال هو الابهام
                    // Color(0XFFeb1555),
                    inactiveColor: Color(0xff8d8e98),
                    max: 220.0,
                    onChanged: (double newValue) {
                      setState(() {
                        height = newValue.round();
                      });
                    }),
              ),
            ],
          ),
        )),
        Expanded(
            child: Row(
          children: [
            Expanded(
                child: Copy(
              colour: Color(0xff1d1e33),
              cardChild: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "WEIGHT",
                    style: labelTextStyle,
                  ),
                  Text(
                    weight.toString(),
                    style: knumberTextStyle,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      RoundIconButton(
                        icon: FontAwesomeIcons.minus,
                        onTap2: () {
                          setState(() {
                            weight--;
                          });
                        },
                      ),
                      SizedBox(width: 10.0),
                      RoundIconButton(
                        icon: FontAwesomeIcons.plus,
                        onTap2: () {
                          setState(() {
                            weight++;
                          });
                        },
                      )
                    ],
                  )
                ],
              ),
            )),
            Expanded(
                child: Copy(
              colour: Color(0xff1d1e33),
              cardChild: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "AGE",
                    style: labelTextStyle,
                  ),
                  Text(
                    age.toString(),
                    style: knumberTextStyle,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      RoundIconButton(
                        icon: FontAwesomeIcons.minus,
                        onTap2: () {
                          setState(() {
                            age--;
                          });
                        },
                      ),
                      SizedBox(width: 10.0),
                      RoundIconButton(
                        icon: FontAwesomeIcons.plus,
                        onTap2: () {
                          setState(() {
                            age++;
                          });
                        },
                      )
                    ],
                  )
                ],
              ),
            )),
          ],
        )),
        ButtomBotton(
            Buttomtitile: "CALCULATOR",
            onTap: () {
              CalculateBrain obj = CalculateBrain(hight: height, wight: weight);
              obj.calculateBmi();
              obj.getResult();
              obj.getEnterpertation();

              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => ResultsPage(
                            bmiResult: obj.calculateBmi(),
                        textResult: obj.getResult(),
                        interpation:obj.getEnterpertation() ,
                          )));
            }),
      ]),
    );
  }
}

// Container Copy(){
//   return Container(
//       margin: EdgeInsets.all(15.0),
//       decoration: BoxDecoration(
//         color: Color(0xff1d1e33),
//         borderRadius: BorderRadius.circular(10.0),
//       ),
//     );
// }
