import 'package:flutter/material.dart';

import '../widgets/constants.dart';



class BottomIconHomeScreen extends StatelessWidget {
  const BottomIconHomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            // crossAxisAlignment: CrossAxisAlignment.start,
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

              Container(
                height: 120,
                width: 300,
                decoration: BoxDecoration(
                  color: Color(0xff245EF2),
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text('Please Confirm your email', style: TextStyle(fontSize: 18, color: Colors.white),),
                      Text('We sent an email to c.r.....@gmail.com', style: TextStyle(
                        fontSize: 15, color: Colors.white
                      ),),
                      Text('Please review and activate Trace Spaces account ', style: TextStyle(fontSize: 13, color: Colors.white),),
                      SizedBox(height: 10,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text('Activate your email',style: TextStyle(fontSize: 16, color: Colors.white),),
                          Icon(Icons.arrow_forward, color: Colors.white,)
                        ],
                      )
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('New', style: TextStyle(fontSize: 20, color: Colors.black),),
                    Text('See More', style: TextStyle(fontSize: 16, color: Colors.blue),)
                  ],
                ),
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    Stack(
                      children: [
                        Image.asset('assets/images/home.png',height: 200, width: 150,),
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
                        Image.asset('assets/images/home.png', height: 200, width: 150,)  ,
                      ],
                    ),
                  ],
                ),
              ),
              SizedBox(height: 20,),
              Text('Popular', style: TextStyle(fontSize: 24, color: Colors.black),),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    Stack(
                      children: [
                        Image.asset('assets/images/home.png',height: 200, width: 150,),
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
                        Image.asset('assets/images/home.png', height: 200, width: 150,)  ,
                      ],
                    ),
                  ],
                ),
              ),

            ],
          ),
        ),
      ),
    );
  }
}
