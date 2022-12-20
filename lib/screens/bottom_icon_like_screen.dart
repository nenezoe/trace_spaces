import 'package:flutter/material.dart';
import 'package:trace_space/screens/image_detail_screen.dart';

import '../widgets/constants.dart';


class BottomIconLikeScreen extends StatelessWidget {
  const BottomIconLikeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
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
            SizedBox(height: 20,),

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  height: 30,
                  width: 100,
                  child: Center(child: Text('Self Contain', style: TextStyle(color: Colors.white, ),)),
                  decoration: BoxDecoration(
                    color: Color(0xff245EF2),
                    borderRadius: BorderRadius.circular(20)
                  ),
                ),
                Container(
                  height: 30,
                  width: 100,
                  child: Center(child: Text('Self Contain', style: TextStyle(color: Colors.black, ),)),
                  decoration: BoxDecoration(
                      color: Color(0xffD3DFFC),
                      borderRadius: BorderRadius.circular(20)
                  ),
                ),
                Container(
                  height: 30,
                  width: 100,
                  child: Center(child: Text('Self Contain', style: TextStyle(color: Colors.black, ),)),
                  decoration: BoxDecoration(
                      color: Color(0xffD3DFFC),
                      borderRadius: BorderRadius.circular(20)
                  ),
                )
              ],
            ),
            SizedBox(height: 10,),
            Text('New', style: TextStyle(fontSize: 18, color: Colors.black, fontWeight: FontWeight.bold),),
            Row(
              children: [
                Stack(
                  children: [
                    InkWell(
                        onTap: () {
                          Navigator.of(context).pushNamed(
                              ImageDetailScreen.routeName
                          );
                        },
                        child: Image.asset('assets/images/home.png',height: 200, width: 150,)),
                    Align(
                      alignment: AlignmentDirectional.center,
                      child: Column(
                        children: [
                          Text('500,000/yr'),
                          Text('Asherifa')
                        ],
                      ),
                    )
                  ],
                ),
                Stack(
                  children: [
                    InkWell(
                      onTap: () {

                      },
                        child: Image.asset('assets/images/home.png', height: 200, width: 150,))  ,
                  ],
                ),
              ],
            ),
            SizedBox(height: 20,),
            Row(
              children: [
                Image.asset('assets/images/home.png', height: 200, width: 150,)  ,
                Image.asset('assets/images/home.png', height: 200, width: 150,)  ,
              ],
            )
          ],
        ),
      ),
    );
  }
}
