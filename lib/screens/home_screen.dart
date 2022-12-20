import 'package:flutter/material.dart';
import 'package:trace_space/screens/sign_up_screen.dart';



class HomeScreen extends StatefulWidget {
  static const routeName = '/sign-in-screen';


  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  double? height;
  double?  width;


  @override
  Widget build(BuildContext context) {
    height = MediaQuery.of(context).size.height;
    width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: SingleChildScrollView(
        child: Stack(
          children: [
           Column(
             children: [
               Container(
                 height: height!*0.5,
                 decoration: BoxDecoration(
                     color: Color(0xff245EF2),
                     borderRadius: BorderRadius.only(
                       bottomRight: Radius.circular(50),
                     )
                 ),
               ),
               Container(
                 decoration: BoxDecoration(
                   color: Color(0xff245EF2),
                 ),
                 child: Container(
                   height: height!*.5,
                   decoration: BoxDecoration(
                       color: Colors.white,
                       borderRadius: BorderRadius.only(
                           topLeft: Radius.circular(50)
                       )
                   ),
                 ),
               ),
               // Positioned(
               //   // top: height!*.5-(width!*.2),
               //   // left: width!*.3,
               //   child: Container(
               //     height: width!*.4,
               //     width: width!*.4,
               //     child: Column(
               //       children: [],
               //     ),
               //   ),
               // )
             ],
           ),
            Padding(
              padding: const EdgeInsets.only(top: 90.0),
              child: Center(
                child: Column(
                  children: [
                    Text('Welcome',style: TextStyle(
                      fontSize: 32,
                      fontWeight: FontWeight.bold,
                      color: Colors.white
                    ),),
                    SizedBox(height: 90,),
                    Image.asset('assets/images/logo.png'),

                    SizedBox(height: 20,),
                    InkWell(
                      onTap: () {
                        Navigator.of(context).pushNamed(
                          SignUpScreen.routeName,
                        );
                      },
                      child: Container(
                        margin: EdgeInsets.all(20),
                        width: double.infinity,
                        height: 40,
                        decoration: BoxDecoration(
                          color: Color(0xff245EF2),
                          borderRadius: BorderRadius.circular(10)
                        ),
                        child: Center(child: Text('Sign Up',
                        style: TextStyle(
                          fontSize: 12,
                          color: Colors.white
                        ),)),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.all(20),
                      width: double.infinity,
                      height: 40,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10),
                        border: Border.all(color: Color(0xff245EF2))
                      ),
                      child: Center(child: Text('Sign In',
                        style: TextStyle(
                            fontSize: 12,
                            color: Color(0xff245EF2)
                        ),)),
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
