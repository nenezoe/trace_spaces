import 'package:flutter/material.dart';
import 'package:trace_space/screens/verify_account_number_screen.dart';

import '../widgets/constants.dart';



class InternationalPassportScreen extends StatelessWidget {
  static const routeName = '/international-passport-screen';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('Verifyy Account', style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),),
                SizedBox(height: 20,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset('assets/images/light.png'),
                    SizedBox(width: 10),
                    Text('International Passport')
                  ],
                ),
                SizedBox(height: 40,),
                Text('Please Input your international passport number'),
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
                    hintText: "Type Here... ",
                    label: Text(' Type Here... ', style: TextStyle(color: Colors.black),),
                  ),
                ),

                InkWell(
                  onTap: (){
                      Navigator.of(context).pushNamed(
                        VerifyAccountNumberScreen.routeName,
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
                    child: Center(child: Text('Verify',
                      style: TextStyle(
                          fontSize: 12,
                          color: Colors.white
                      ),)),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
