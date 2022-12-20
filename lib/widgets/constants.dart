import 'package:flutter/material.dart';

const kTextFieldDecoration = InputDecoration(
  // fillColor: Color(0xffF4F6F0),
  filled: true,
  hintText: "Enter a value",
  contentPadding: EdgeInsets.symmetric(
    vertical: 10.0,
    horizontal: 20.0,
  ),
  border: OutlineInputBorder(
    borderRadius: BorderRadius.all(Radius.circular(28.0)),
  ),
  enabledBorder: OutlineInputBorder(
    borderSide: BorderSide(color: Colors.white, width: 1.0),
    borderRadius: BorderRadius.all(Radius.circular(10.0)),
  ),
  focusedBorder: OutlineInputBorder(
      borderSide: BorderSide(color: Color(0xff245EF2), width: 2.0),
      borderRadius: BorderRadius.all(Radius.circular(10.0))),
);