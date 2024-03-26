import 'package:flutter/material.dart';

class AppWidget{

  static TextStyle boldTextFieldStyle() {
    return TextStyle(color: Colors.black, fontSize: 24.0,
        fontWeight: FontWeight.bold,
        fontFamily: 'Lemon');
  }
    static TextStyle headerTextFieldStyle() {
      return TextStyle(color: Colors.black, fontSize: 24.0,
          fontWeight: FontWeight.w500,
          fontFamily: 'PTSans');
  }

  static TextStyle lightTextFieldStyle() {
    return TextStyle(color: Colors.black38, fontSize: 15.0,
        fontWeight: FontWeight.w500,
        fontFamily: 'PTSans');
  }

  static TextStyle headerTopicFieldStyle() {
    return TextStyle(color: Colors.black, fontSize: 19.0,
        fontWeight: FontWeight.w600,
        fontFamily: 'PTSans');
  }

  static TextStyle headerDetailsFieldStyle() {
    return TextStyle(color: Colors.black, fontSize: 20.0,
        fontWeight: FontWeight.w600,
        fontFamily: 'Chemmozhifont');
  }


  static TextStyle normalFieldStyle() {
    return TextStyle(color: Colors.black, fontSize: 17.0,
        fontWeight: FontWeight.w600,
        fontFamily: 'PTSans');
  }

  static TextStyle loginbuttonStyle() {
    return TextStyle(color: Colors.white, fontSize: 24.0,
        fontWeight: FontWeight.bold,
        fontFamily: 'Chemmozhifont');
  }
 }