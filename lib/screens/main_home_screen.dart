import 'package:flutter/material.dart';

import '../widgets/constants.dart';


class MainHomeScreen extends StatelessWidget {
  static const routeName = '/main-home-screen';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Image.asset('assets/images/group-circle.png'),
                  Image.asset('assets/images/settings.png')
                ],
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
                prefixIcon: Icon(Icons.search),
                hintText: "Search Spaces",
                label: Text('Search Spaces ', style: TextStyle(color: Colors.black),),
              ),
            ),

          ],
        ),
      ),
    );
  }
}
