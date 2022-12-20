import 'package:flutter/material.dart';


class WalletScreen extends StatelessWidget {
  static const routeName = '/wallet-screen';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("Wallet", style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),),
                SizedBox(height: 20,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("NGN50,000", style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),),
                    Text('Top Up', style: TextStyle(color: Colors.blue),)
                  ],
                ),
            Text('Available Balance'),
                SizedBox(height: 10,),
               Row(
                 mainAxisAlignment: MainAxisAlignment.spaceBetween,
                 children: [
                   Text('Primary Card', style: TextStyle(fontSize: 17, ),),
                   Text('NGN50,000', style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),),
                 ],
               ),
                Text('3495 **** **** 9600', style: TextStyle(fontSize: 15),),
                SizedBox(height: 20,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Image.asset('assets/images/visa.png'),
                    Text('View All', style: TextStyle(fontSize: 16, color: Colors.blue),)
                  ],
                ),
                Divider(
                    color: Colors.black
                ),
                Center(child: Text('Send & Receive', style: TextStyle(fontSize: 17),)),
                Text('Recent Transactions'),
                SizedBox(height: 20,),
                Text('Credit', style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('Debit Cards'),
                    Text('+NGN20,000', style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold, color: Colors.green),)
                  ],
                ),
                SizedBox(height: 20,),
                Text('Credit',  style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('Debit Cards'),
                    Text('+NGN10,000', style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold, color: Colors.green),)
                  ],
                ),
                SizedBox(height: 20,),
                Text('Debit',  style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('House Rent'),
                    Text('+NGN300,000', style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold, color: Colors.red),)
                  ],
                ),
                SizedBox(height: 20,),
                Text('See All', style: TextStyle(color: Colors.blue, fontSize: 19),)


              ],
            ),
          ),
        ),
      ),
    );
  }
}
