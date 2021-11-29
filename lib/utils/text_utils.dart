import 'package:flutter/material.dart';

class TextUtils {
  String helveticaNeue = "Helvetica_Neue";


  Text normal11(String text, Color color) {
    return Text(
      text,
      style: TextStyle(color: color, fontSize: 11, fontFamily: helveticaNeue, fontWeight: FontWeight.normal),
    );
  }


  Text normal12(String text, Color color) {
    return Text(
      text,
      style: TextStyle(color: color, fontSize: 12, fontFamily: helveticaNeue, fontWeight: FontWeight.normal),
    );
  }

  Text normal14(String text, Color color) {
    return Text(
      text,
      style: TextStyle(color: color, fontSize: 14, fontFamily: helveticaNeue, fontWeight: FontWeight.normal),
    );
  }

  Text normal14Ellipsis(String text, Color color) {
    return Text(
      text,
      style: TextStyle(color: color, fontSize: 14, fontFamily: helveticaNeue, fontWeight: FontWeight.normal, overflow: TextOverflow.ellipsis),
    );
  }

  Text normal16(String text, Color color) {
    return Text(
      text,
      style: TextStyle(color: color, fontSize: 16, fontFamily: helveticaNeue, fontWeight: FontWeight.normal),
    );
  }

  Text normal17(String text, Color color) {
    return Text(
      text,
      style: TextStyle(color: color, fontSize: 17, fontFamily: helveticaNeue, fontWeight: FontWeight.normal),
    );
  }

  Text normal18(String text, Color color) {
    return Text(
      text,
      style: TextStyle(color: color, fontSize: 18, fontFamily: helveticaNeue, fontWeight: FontWeight.normal),
    );
  }

  Text normal20(String text, Color color) {
    return Text(
      text,
      style: TextStyle(color: color, fontSize: 20, fontFamily: helveticaNeue, fontWeight: FontWeight.normal),
    );
  }

  Text bold14(String text, Color color) {
    return Text(
      text,
      style: TextStyle(color: color, fontSize: 14, fontFamily: helveticaNeue, fontWeight: FontWeight.bold),
    );
  }

  Text bold16(String text, Color color) {
    return Text(
      text,
      style: TextStyle(color: color, fontSize: 16, fontFamily: helveticaNeue, fontWeight: FontWeight.bold),
    );
  }

  Text bold18(String text, Color color) {
    return Text(
      text,
      style: TextStyle(color: color, fontSize: 18, fontFamily: helveticaNeue, fontWeight: FontWeight.bold),
    );
  }

  Text bold20(String text, Color color) {
    return Text(
      text,
      style: TextStyle(color: color, fontSize: 20, fontFamily: helveticaNeue, fontWeight: FontWeight.bold),
    );
  }
}
