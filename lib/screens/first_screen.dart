
import 'package:flutter/material.dart';

import '../widgets/onboarding_screen.dart';
import 'home_screen.dart';
// import 'onboarding_screen.dart';

class FirstScreen extends StatefulWidget {
  // static const routeName = '/first-screen';

  @override
  State<FirstScreen> createState() => _FirstScreenState();
}

class _FirstScreenState extends State<FirstScreen> {
  double? height;
  double?  width;
  static const routeName = '/first-screen';
  int currentIndex = 0;
  late PageController _controller;

  @override
  void initState() {
    _controller = PageController(initialPage: 0);
    super.initState();
  }


  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    height = MediaQuery.of(context).size.height;
    width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Stack(
        children: [
          // Column(
          //   children: [
          //     Container(
          //       height: height!*0.5,
          //       decoration: BoxDecoration(
          //           color: Color(0xff245EF2),
          //           borderRadius: BorderRadius.only(
          //             bottomRight: Radius.circular(50),
          //           ),
          //       ),
          //     ),
          //     Container(
          //       decoration: BoxDecoration(
          //         color: Color(0xff245EF2),
          //       ),
          //       child: Container(
          //         height: height! * .5,
          //         decoration: BoxDecoration(
          //             color: Colors.white,
          //             borderRadius: BorderRadius.only(
          //                 topLeft: Radius.circular(50)
          //             )
          //         ),
          //       ),
          //     ),
          //     // Positioned(
          //       // top: height!*.1,
          //       // top: height!*.5-(width!*.2),
          //       // left: width!*.3,
          //       // child:
          //
          //     // )
          //   ],
          // ),
          Image.asset('assets/images/background.png'),
          Container(
            // alignment: Alignment(0, 0),
            child: Column(
              children: [
                Expanded(
                  child: PageView.builder(
                    controller: _controller,
                    itemCount: contents.length,
                    onPageChanged: (int index) {
                      setState(() {
                        currentIndex = index;
                      });
                    },
                    itemBuilder: (_, i) {
                      return Padding(
                        padding: const EdgeInsets.only(top: 90, bottom: 20),
                        child: Center(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Center(child: Image.asset(contents[i].image, height: 220,)),
                              Text(contents[i].title,  style: TextStyle(
                                fontSize: 21,
                                fontWeight: FontWeight.bold,
                              ),),
                              Text(contents[i].description,  style: TextStyle(
                                fontSize: 18,
                                color: Colors.grey,
                              ),),
                            ],
                          ),
                        ),
                        // child: Column(
                        //   children: [
                        //     Image.asset(
                        //       contents[i].image,
                        //       height: 100,
                        //     ),
                        //     Text(
                        //       contents[i].title,
                        //       style: TextStyle(
                        //         fontSize: 25,
                        //         fontWeight: FontWeight.bold,
                        //       ),
                        //     ),
                        //     SizedBox(height: 20),
                        //     Text(
                        //       contents[i].description,
                        //       textAlign: TextAlign.center,
                        //       style: TextStyle(
                        //         fontSize: 18,
                        //         color: Colors.grey,
                        //       ),
                        //     )
                        //   ],
                        // ),
                      );
                    },
                  ),
                ),

                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [

                      Container(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: List.generate(
                            contents.length,
                                (index) => buildDot(index, context),
                          ),
                        ),
                      ),
                      InkWell(
                        onTap: (){
                          if (currentIndex == contents.length - 1) {
                            Navigator.pushReplacement(
                              context,
                              MaterialPageRoute(
                                builder: (_) => HomeScreen(),
                              ),
                            );
                          }
                          _controller.nextPage(
                            duration: Duration(milliseconds: 100),
                            curve: Curves.bounceIn,
                          );
                        },

                        child: Container(
                          height: 60,
                          width:  100,
                          // margin: EdgeInsets.all(40),
                          child: Container(
                            child: Center(child: Text(currentIndex == contents.length - 1 ? "Continue" : "Next", style: TextStyle(
                              color: Color(0xff245EF2),
                              fontSize: 20
                            ),)),
                            decoration: BoxDecoration(
                                color: Colors.white,
                                // textColor: Colors.white,
                                borderRadius: BorderRadius.circular(20)
                            ),
                          ),
                        ),
                      )



                    ],
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }

  Container buildDot(int index, BuildContext context) {
    return Container(
      height: 10,
      width: currentIndex == index ? 25 : 10,
      margin: EdgeInsets.only(right: 5),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: Color(0xff245EF2),
      ),
    );
  }
}


