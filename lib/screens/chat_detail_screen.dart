import 'package:flutter/material.dart';

import '../widgets/constants.dart';



class ChatDetailScreen extends StatelessWidget {
  static const routeName = '/chat-detail-screen';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Card(
            elevation: 2,
            child: ListTile(
              leading: CircleAvatar(
                backgroundColor: Colors.grey,
              ),
              title: Text("Agent"),
              subtitle: Text("Online", style: TextStyle(color: Colors.green),),
              trailing: Text("Leave Chat", style: TextStyle(color: Colors.blue),),
            ),
          ),
          SizedBox(height: 20,),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                CircleAvatar(
                  backgroundColor: Colors.grey,
                ),
                SizedBox(width: 10,),
                Container(
                  height: 40,
                  width: 120,
                  decoration: BoxDecoration(
                    color: Colors.blue,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(20),
                      bottomRight: Radius.circular(20)
                    )
                  ),
                )
              ],
            ),
          ),
          SizedBox(height: 20,),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Row(
              children: [
                CircleAvatar(
                  backgroundColor: Colors.grey,
                ),
                SizedBox(width: 10,),
                Container(
                  height: 40,
                  width: 120,
                  decoration: BoxDecoration(
                      color: Colors.black,
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(20),
                          bottomRight: Radius.circular(20)
                      )
                  ),
                )
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Row(
              children: [
                CircleAvatar(
                  backgroundColor: Colors.grey,
                ),
                SizedBox(width: 10,),
                Container(
                  height: 40,
                  width: 120,
                  decoration: BoxDecoration(
                      color: Colors.black,
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(20),
                          bottomRight: Radius.circular(20)
                      )
                  ),
                )
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                CircleAvatar(
                  backgroundColor: Colors.grey,
                ),
                SizedBox(width: 10,),
                Container(
                  height: 40,
                  width: 120,
                  decoration: BoxDecoration(
                      color: Colors.blue,
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(20),
                          bottomRight: Radius.circular(20)
                      )
                  ),
                )
              ],
            ),
          ),


          Spacer(),
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
              suffixIcon: Icon(Icons.face),
              hintText: "Email",
              label: Text('Email ', style: TextStyle(color: Colors.black),),
            ),
          ),
        ],
      ),
    );
  }
}
