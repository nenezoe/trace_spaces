import 'package:flutter/material.dart';

import '../widgets/constants.dart';



class ProfileScreen extends StatelessWidget {
  static const routeName = '/profile-screen';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                Text('Profile', style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),),
                Image.asset('assets/images/profile.png'),
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
                    hintText: "Full name ",
                    label: Text('Full Name  ', style: TextStyle(color: Colors.black),),
                  ),
                ),
                SizedBox(height: 10,),

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
                    hintText: "D.O.B ",
                    label: Text('D.O.B'),
                    prefix: Image.asset('assets/images/vv.png')
                  ),
                ),

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
                      hintText: "Email address ",
                      label: Text('Email Address'),
                      // prefix: Image.asset('assets/images/vv.png')
                  ),
                ),
                SizedBox(height: 10,),

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
                      hintText: "Phone Number ",
                      label: Text('Phone Number'),
                      // prefix: Image.asset('assets/images/vv.png')
                  ),
                ),
                SizedBox(height: 10,),
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
                      hintText: "Residential Address ",
                      label: Text('Residential Address'),
                  ),
                ),
                SizedBox(height: 10,),

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
                    hintText: "Phone Number ",
                    label: Text('Phone Number'),
                    // prefix: Image.asset('assets/images/vv.png')
                  ),
                ),
                SizedBox(height: 10,),
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
                    hintText: "Type Of I.D Card ",
                    label: Text('Type Of I.D Card'),
                  ),
                ),

                SizedBox(height: 10,),
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
                    hintText: "Password  ",
                    label: Text('Password '),
                  ),
                ),
                Container(
                  margin: EdgeInsets.all(20),
                  width: double.infinity,
                  height: 40,
                  decoration: BoxDecoration(
                      color: Color(0xff245EF2),
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(color: Color(0xff245EF2))
                  ),
                  child: Center(child: Text('Save Changes',
                    style: TextStyle(
                        fontSize: 12,
                        color: Colors.white
                    ),)),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
