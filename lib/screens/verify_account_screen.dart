import 'package:flutter/material.dart';
import 'package:trace_space/screens/international_passport_screen.dart';
import 'package:trace_space/screens/verify_account_number_screen.dart';


class VerifyAccount extends StatelessWidget {
  static const routeName = '/verify-account-screen';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('Verify Account', style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),),
              Text('Please select preferred means of verification'),
              SizedBox(height: 20,),
              InkWell(
                onTap: (){
                  Navigator.of(context).pushNamed(
                    InternationalPassportScreen.routeName,
                  );
                },
                child: Container(
                  height: 180,
                  child: Card(
                    elevation: 3,
                    color: Color(0xffF8F8F8),
                    child: Center(
                      child: ListTile(
                        leading: Image.asset('assets/images/light.png'),
                        title: Text("International Passport"),
                      ),
                    ),
                  ),
                ),
              ),

              SizedBox(height: 10,),
              Container(
                height: 180,
                child: Card(
                  elevation: 3,
                  color: Color(0xffF8F8F8),
                  child: Center(
                    child: ListTile(
                      leading: Image.asset('assets/images/identity.png'),
                      title: Text("Identity Card"),
                    ),
                  ),
                ),
              ),

              SizedBox(height: 10,),
              Container(
                height: 180,
                child: Card(
                  elevation: 3,
                  color: Color(0xffF8F8F8),
                  child: Center(
                    child: ListTile(
                      leading: Image.asset('assets/images/slip.png'),
                      title: Text("NIN Slip"),
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );

  }
}
