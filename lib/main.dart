import 'package:flutter/material.dart';
import 'input_page.dart';

void main() {
  runApp(BMICalculator());
  
}
class BMICalculator extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(

        theme: ThemeData(
        // Define the default brightness and colors.
       // brightness: Brightness.dark,
       primaryColor: Color(0xff0a0e21),
         scaffoldBackgroundColor:Color(0xff0a0e21),
         textTheme:TextTheme(
           body1:TextStyle(
             color: Colors.white,
           ),
         ) ,
         // backgroundColor: Color(0xff0a0e21),
        accentColor: Colors.cyan[600],
         ),
      debugShowCheckedModeBanner: false,
      home: InputPage(),
    );
  }
}
