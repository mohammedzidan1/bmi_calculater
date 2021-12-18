import 'dart:math';

import 'package:flutter/material.dart';
class CalculateBrain{


  CalculateBrain({this.hight,this.wight});
  final int hight;
  final int wight;
  double _bmi;
  String calculateBmi(){
     _bmi=wight/pow(hight/100, 2);
    return _bmi.toStringAsFixed(1);//عشان اخد رقم واحد بس بعد العلامه

  }
  String getResult(){
    if(_bmi>=25.0)
      return "OverWight";
    else if(_bmi>18.0)
      return "Normal";
    else
      return "UnderWight";
  }
  String getEnterpertation(){
    if(_bmi>=25.0)
      return "You have a higher than normal body wight,try to exercise more"
          ;
    else if(_bmi>18.5)
      return "You have a  normal body wight,god job";
    else
      return "You have a lower than normal body wight,you can eat a bit more";
  }
}