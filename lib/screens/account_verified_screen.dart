import 'package:flutter/material.dart';


class AccountVerifiedScreen extends StatelessWidget {
  static const routeName = '/account-verified-screen';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Text('Verify Account', style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),),
            SizedBox(height: 40,),
            Center(child: Image.asset('assets/images/good.png')),
            SizedBox(height: 10,),
            Text('Account Verified', style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),),
          ],
        ),
      ),
    );
  }
}
