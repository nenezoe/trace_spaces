import 'package:flutter/material.dart';
import 'package:trace_space/screens/chat_detail_screen.dart';

import '../widgets/constants.dart';



class BottomIconChatScreen extends StatelessWidget {
  const BottomIconChatScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Text('Chat',style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold
          ),),
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
          buildCardDashboard("Agent", "i love the apartment, and i would love to...", () {   Navigator.of(context).pushNamed(
            ChatDetailScreen.routeName,
          );}),
          buildCardDashboard("Agent", "i love the apartment, and i would love to...", () {}),
          buildCardDashboard("Agent", "i love the apartment, and i would love to...", () {}),
          buildCardDashboard("Agent", "i love the apartment, and i would love to...", () {})
        ],
      ),
    );
  }




  Padding buildCardDashboard(String title, String subtitle, VoidCallback callback ) {
    return  Padding(
      padding: const EdgeInsets.all(8.0),
      child: SingleChildScrollView(
        child: Column(
          children: [
            GestureDetector(
              onTap: callback,
              child: Card(
                elevation: 2,
                child: ListTile(
                  leading: CircleAvatar(
                    backgroundColor: Colors.grey,
                  ),
                  title: Text(title),
                  subtitle: Text(subtitle),
                  trailing: Column(
                    children: [
                      Icon(Icons.arrow_forward_ios),
                      Text('30 mins', style: TextStyle(color: Colors.green),)
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
