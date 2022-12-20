import 'package:flutter/material.dart';
import 'package:trace_space/screens/welcome_screen.dart';

import '../widgets/constants.dart';
import 'package:flutter_signin_button/button_list.dart';
import 'package:flutter_signin_button/button_view.dart';




class SignUpScreen extends StatelessWidget {
  static const routeName = '/sign-up-screen';


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
          child: Center(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                children: [
                  Image.asset('assets/images/ellip.png'),
                  Text('SIgn Up',
                    textAlign: TextAlign.start,
                    style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),),
                  SizedBox(height: 20,),
                  TextFormField(
                    keyboardType: TextInputType.text,
                    // controller: _nameController,
                    // onSaved: (value) {
                    //   name = value!;
                    // },
                    validator: (value) {
                      if (value!.isEmpty){
                        return "Please enter a valid number";
                      }
                      if (value.length < 3){
                        return "username must be more than two character";
                      }
                      return null;
                    },
                    // onChanged: (value) {
                    //   // eventDate = value;
                    //   currentUser['email'] = value;
                    // },

                    decoration: kTextFieldDecoration.copyWith(
                      hintText: "Full Name",
                      label: Text('Full Name', style: TextStyle(color: Colors.black),),
                    ),
                  ),
                  SizedBox(height: 20,),
                  TextFormField(
                    keyboardType: TextInputType.text,
                    // controller: _nameController,
                    // onSaved: (value) {
                    //   name = value!;
                    // },
                    validator: (value) {
                      if (value!.isEmpty){
                        return "Please enter a valid number";
                      }
                      if (value.length < 3){
                        return "username must be more than two character";
                      }
                      return null;
                    },
                    // onChanged: (value) {
                    //   // eventDate = value;
                    //   currentUser['email'] = value;
                    // },

                    decoration: kTextFieldDecoration.copyWith(
                      hintText: "Email",
                      label: Text('Email ', style: TextStyle(color: Colors.black),),
                    ),
                  ),

                  SizedBox(height: 20,),
                  TextFormField(
                    keyboardType: TextInputType.text,
                    // controller: _nameController,
                    // onSaved: (value) {
                    //   name = value!;
                    // },
                    validator: (value) {
                      if (value!.isEmpty){
                        return "Please enter a valid number";
                      }
                      if (value.length < 3){
                        return "username must be more than two character";
                      }
                      return null;
                    },
                    // onChanged: (value) {
                    //   // eventDate = value;
                    //   currentUser['email'] = value;
                    // },

                    decoration: kTextFieldDecoration.copyWith(
                      hintText: "Phone Number",
                      label: Text('Phone Number ', style: TextStyle(color: Colors.black),),
                    ),
                  ),
                  SizedBox(height: 20,),

                  TextFormField(
                    keyboardType: TextInputType.text,
                    // controller: _nameController,
                    // onSaved: (value) {
                    //   name = value!;
                    // },
                    validator: (value) {
                      if (value!.isEmpty){
                        return "Please enter a valid number";
                      }
                      if (value.length < 3){
                        return "username must be more than two character";
                      }
                      return null;
                    },
                    // onChanged: (value) {
                    //   // eventDate = value;
                    //   currentUser['email'] = value;
                    // },

                    decoration: kTextFieldDecoration.copyWith(
                      hintText: "Password ",
                      label: Text('Password  ', style: TextStyle(color: Colors.black),),
                    ),
                  ),
                  SizedBox(height: 20,),
                  TextFormField(
                    keyboardType: TextInputType.text,
                    // controller: _nameController,
                    // onSaved: (value) {
                    //   name = value!;
                    // },
                    validator: (value) {
                      if (value!.isEmpty){
                        return "Please enter a valid number";
                      }
                      if (value.length < 3){
                        return "username must be more than two character";
                      }
                      return null;
                    },
                    // onChanged: (value) {
                    //   // eventDate = value;
                    //   currentUser['email'] = value;
                    // },

                    decoration: kTextFieldDecoration.copyWith(
                      hintText: "Referal Code",
                      label: Text('Referal Code ', style: TextStyle(color: Colors.black),),
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.of(context).pushNamed(
                        WelcomeScreen.routeName,
                      );
                    },
                    child: Container(
                      margin: EdgeInsets.all(20),
                      width: double.infinity,
                      height: 40,
                      decoration: BoxDecoration(
                          color: Color(0xffD3DFFC),
                          borderRadius: BorderRadius.circular(10),
                          border: Border.all(color: Color(0xff245EF2))
                      ),
                      child: Center(child: Text('Sign Up',
                        style: TextStyle(
                            fontSize: 12,
                            color: Colors.black
                        ),)),
                    ),
                  ),
                  SizedBox(height: 10,),
                  Text('Sign Up With'),
                  SizedBox(height: 10,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      // with custom text
                      Image.asset('assets/images/google.png'),
                      SizedBox(width: 20,),
                      Image.asset('assets/images/apple.png'),

                    ],
                  ),
                  SizedBox(height: 20,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text('Already have an account ? ', style: TextStyle(fontSize: 16),),
                      Text('Login', style: TextStyle(color: Colors.blue, fontSize: 16),),
                      SizedBox(height: 20,),
                    ],
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
