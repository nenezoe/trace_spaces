import 'package:flutter/material.dart';
import 'package:trace_space/screens/main_home_screen.dart';
import 'package:trace_space/screens/tabs_screen.dart';
import 'package:trace_space/screens/welcome_screen.dart';

import '../widgets/constants.dart';
import 'package:flutter_signin_button/button_list.dart';
import 'package:flutter_signin_button/button_view.dart';




class SignInScreen extends StatelessWidget {
  static const routeName = '/sign-in-screen';


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
                  Text('Log In',
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
                      hintText: "Password ",
                      label: Text('Password  ', style: TextStyle(color: Colors.black),),
                    ),
                  ),
                  SizedBox(height: 20,),
                  InkWell(
                    onTap: () {
                      Navigator.of(context).pushNamed(
                        TabsScreen.routeName,
                      );
                    },
                    child: Container(
                      margin: EdgeInsets.all(20),
                      width: double.infinity,
                      height: 40,
                      decoration: BoxDecoration(
                          color: Color(0xff245EF2),
                          borderRadius: BorderRadius.circular(10),
                          border: Border.all(color: Color(0xff245EF2))
                      ),
                      child: Center(child: Text('Log In',
                        style: TextStyle(
                            fontSize: 12,
                            color: Colors.white
                        ),)),
                    ),
                  ),
                  SizedBox(height: 10,),
                  Text('Log In With'),
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
                      Text('Don\'t have an account ? ', style: TextStyle(fontSize: 16),),
                      Text('Sign Up', style: TextStyle(color: Colors.blue, fontSize: 16),),
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
