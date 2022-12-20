import 'package:flutter/material.dart';
import 'package:trace_space/screens/sign_in_screen.dart';


class WelcomeScreen extends StatelessWidget {
  static const routeName = '/welcome-screen';


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset('assets/images/welcome.png'),
          SizedBox(height: 10,),
          InkWell(
            onTap: () {
              Navigator.of(context).pushNamed(
                SignInScreen.routeName,
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
              child: Center(child: Text('Proceed to Log in',
                style: TextStyle(
                    fontSize: 12,
                    color: Colors.white
                ),)),
            ),
          ),
        ],
      ),
    );
  }
}
