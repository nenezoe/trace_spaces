import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:trace_space/screens/account_verified_screen.dart';


class VerifyAccountNumberScreen extends StatelessWidget {
  static const routeName = '/verify-account-number-screen';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("Verify Account", style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),),
        SizedBox(height: 20,),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset('assets/images/light.png'),
                SizedBox(width: 10),
                Text('International Passport')
              ],
            ),
        SizedBox(height: 20,),
        Text('Verify phone number +234 8111 **** 0000'),
        Form(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            SizedBox(
              height: 68,
              width: 64,
              child: TextFormField(
                onChanged: (value){
                  if (value.length == 1 ){
                    FocusScope.of(context).nextFocus();
                  }
                },
                onSaved: (pin1){} ,
                decoration: const InputDecoration(hintText: "0"),
                style: Theme.of(context).textTheme.headlineLarge,
                keyboardType: TextInputType.number,
                textAlign: TextAlign.center,
                inputFormatters: [
                  LengthLimitingTextInputFormatter(1),
                  FilteringTextInputFormatter.digitsOnly
                ],
              ),
            ),

            SizedBox(
              height: 68,
              width: 64,
              child: TextFormField(
                onChanged: (value){
                  if (value.length == 1 ){
                    FocusScope.of(context).nextFocus();
                  }
                },
                onSaved: (pin2){} ,
                decoration: const InputDecoration(hintText: "0"),
                style: Theme.of(context).textTheme.headlineLarge,
                keyboardType: TextInputType.number,
                textAlign: TextAlign.center,
                inputFormatters: [
                  LengthLimitingTextInputFormatter(1),
                  FilteringTextInputFormatter.digitsOnly
                ],
              ),
            ),

            SizedBox(
              height: 68,
              width: 64,
              child: TextFormField(
                onChanged: (value){
                  if (value.length == 1 ){
                    FocusScope.of(context).nextFocus();
                  }
                },
                onSaved: (pin3){} ,
                decoration: const InputDecoration(hintText: "0"),
                style: Theme.of(context).textTheme.headlineLarge,
                keyboardType: TextInputType.number,
                textAlign: TextAlign.center,
                inputFormatters: [
                  LengthLimitingTextInputFormatter(1),
                  FilteringTextInputFormatter.digitsOnly
                ],
              ),
            ),

            SizedBox(
              height: 68,
              width: 64,
              child: TextFormField(
                onChanged: (value){
                  if (value.length == 1 ){
                    FocusScope.of(context).nextFocus();
                  }
                },
                onSaved: (pin4){} ,
                decoration: const InputDecoration(hintText: "0"),
                style: Theme.of(context).textTheme.headlineLarge,
                keyboardType: TextInputType.number,
                textAlign: TextAlign.center,
                inputFormatters: [
                  LengthLimitingTextInputFormatter(1),
                  FilteringTextInputFormatter.digitsOnly
                ],
              ),
            )
          ],
        ),
    ),

            InkWell(
              onTap: (){
                Navigator.of(context).pushNamed(
                  AccountVerifiedScreen.routeName,
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
    );
  }
}
