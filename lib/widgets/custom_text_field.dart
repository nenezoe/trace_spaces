import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {

  final TextEditingController? controller;
  final String? hintText;
  bool? isObscure = true;

  CustomTextField({
    this.controller,
    this.hintText,
    this.isObscure
  });


  @override
  Widget build(BuildContext context) {
    return Container(

      decoration: BoxDecoration(
        color: Colors.grey[300],
        borderRadius: BorderRadius.all(Radius.circular(50)),
      ),

      margin: const EdgeInsets.all(5.0),

      child: TextFormField(
        controller: controller,
        obscureText: isObscure!,
        cursorColor: Theme.of(context).primaryColor,

        decoration: InputDecoration(
          border: InputBorder.none,
          focusColor: Theme.of(context).primaryColor,
          hintText: hintText,
          contentPadding: EdgeInsets.only(left: 20),
        ),

      ),

    );
  }
}