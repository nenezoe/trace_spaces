import 'package:flutter/material.dart';
import 'package:trace_space/screens/Wallet_screen.dart';
import 'package:trace_space/screens/profile_screen.dart';
import 'package:trace_space/screens/verify_account_screen.dart';




class MainDrawer extends StatelessWidget {
  Widget buildListTil(String title, Image image, VoidCallback  tapHandler) {
    return ListTile(
      // leading: Icon(icon, size: 26, ),
      leading: image,
      title: Text(title,
        style: TextStyle(
          fontFamily: 'RobotoCondensed',
          fontSize: 18,
          fontWeight: FontWeight.bold,
        ),),
      onTap: tapHandler,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Padding(
        padding: const EdgeInsets.only(top: 32.0),
        child: Column(
          children: [
            Image.asset('assets/images/group-circle.png'),
            SizedBox(height: 60,),
            Container(
              height: 80,
              width:  80,
              decoration: BoxDecoration(
                color: Colors.grey,
                borderRadius: BorderRadius.circular(50)
              ),
            ),
            InkWell(
              onTap: () {
                Navigator.of(context).pushNamed(
                  ProfileScreen.routeName,
                );
              },
                child: Text('View Profile', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),)),
            SizedBox(height: 40,),
            buildListTil('Manage', Image.asset('assets/images/manage.png'), () {
              Navigator.of(context).pushNamed(VerifyAccount.routeName);
            }),
            buildListTil('Mode', Image.asset('assets/images/mode.png'), (){
              // Navigator.of(context).pushNamed(FiltersScreen.routeName);
            }),
            buildListTil('Wallet', Image.asset('assets/images/wallet.png'), (){
              Navigator.of(context).pushNamed(WalletScreen.routeName);
            }),
            buildListTil('Logout', Image.asset('assets/images/logout.png'), (){
              // Navigator.of(context).pushNamed(FiltersScreen.routeName);
            }),

          ],
        ),
      ),
    );
  }
}