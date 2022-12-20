import 'package:flutter/material.dart';


class BottomIconNotificationScreen extends StatelessWidget {

var border = Border(
  bottom: BorderSide(width: 1.5, color: Colors.grey),
);

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      body: Column(
        children: [
          Text('Notification', style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold
          ),),
          Row(
            children: [
              Expanded(
                child:  Container(
                  child: TextButton(
                    child: Text(
                      "All",
                      style: TextStyle(fontSize: 25),
                    ),
                    onPressed: () {

                    },
                    // style: TextButton.styleFrom(
                    //     foregroundColor: Colors.red,
                    //     elevation: 2,
                    //     // backgroundColor: Colors.amber
                    // ),
                  ),
                  decoration: BoxDecoration(
                    border: Border(
                      bottom: BorderSide(width: 1.5, color: Colors.grey),
                    ),
                  ),
                ),
              ),

              Expanded(
                child:  TextButton(
                  child: Text(
                    "Personal",
                    style: TextStyle(fontSize: 25),
                  ),
                  onPressed: () {},
                  // style: TextButton.styleFrom(
                  //     foregroundColor: Colors.red,
                  //     elevation: 2,
                  //     // backgroundColor: Colors.amber
                  // ),
                ),
              ),


            ],
          ),
          buildCardDashboard(Icon(Icons.person), "Deposit Notification", "You have deposited 200,000 to your wallet, kindly see details here"),
          buildCardDashboard(Icon(Icons.local_pizza_sharp), "Appartment Notification", "We have a new apartment for rent close to your location. Kindly see details here"),
          buildCardDashboard(Icon(Icons.warehouse_outlined), "Your Apartment Notification", "You have deposited 200,000 to your wallet, kindly see details here")

        ],
      ),
    );
  }



Padding buildCardDashboard(Icon icon , String title, String subtitle ) {
  return  Padding(
    padding: const EdgeInsets.all(8.0),
    child: SingleChildScrollView(
      child: Column(
        children: [
          Card(
            elevation: 2,
            child: ListTile(
              leading: icon,
              title: Text(title),
              subtitle: Text(subtitle),
            ),
          ),
        ],
      ),
    ),
  );
}
}
