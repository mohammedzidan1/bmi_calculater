import 'package:BMICalculator/copy.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'constant.dart';
import 'input_page.dart';
import 'buttom_button.dart';

class ResultsPage extends StatelessWidget {
  final String bmiResult;
  final String textResult;
  final String interpation;

  ResultsPage(
      {@required this.textResult,
      @required this.bmiResult,
      @required this.interpation});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("BMICALCULATOR"),
        ),
        body: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            //  بيضيف مسافه قبل وبعد كل ابن مسافات متساويه
            children: [
              Expanded(
                  child: Container(
                padding: EdgeInsets.all(15.0),
                alignment: Alignment.bottomLeft,
                child: Text("Your Result", style: KTitleTextStyle),
              )),
              Expanded(
                  flex: 5,
                  child: Copy(
                    colour: kactivCaluor,
                    cardChild: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(
                          textResult.toUpperCase(),
                          style: KResultTextStyle,
                        ),
                        Text(
                          bmiResult,
                          style: KBMITextStyle,
                        ),
                        Text(
                       interpation,
                          style: KBodyTextStyle,
                          textAlign: TextAlign.center,
                        ),
                        ButtomBotton(
                          Buttomtitile: "RE CALCULATE",
                          onTap: () {
                            Navigator.pop(context);
                          },
                        ),
                      ],
                    ),
                  )),
            ]));
  }
}
