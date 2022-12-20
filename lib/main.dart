import 'package:flutter/material.dart';
import 'package:trace_space/screens/Wallet_screen.dart';
import 'package:trace_space/screens/account_verified_screen.dart';
import 'package:trace_space/screens/chat_detail_screen.dart';
import 'package:trace_space/screens/first_screen.dart';
import 'package:trace_space/screens/home_screen.dart';
import 'package:trace_space/screens/image_detail_screen.dart';
import 'package:trace_space/screens/international_passport_screen.dart';
import 'package:trace_space/screens/main_home_screen.dart';
import 'package:trace_space/screens/profile_screen.dart';
import 'package:trace_space/screens/sign_in_screen.dart';
import 'package:trace_space/screens/sign_up_screen.dart';
import 'package:trace_space/screens/splash_screen.dart';
import 'package:trace_space/screens/tabs_screen.dart';
import 'package:trace_space/screens/verify_account_number_screen.dart';
import 'package:trace_space/screens/verify_account_screen.dart';
import 'package:trace_space/screens/welcome_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      debugShowCheckedModeBanner: false,
      initialRoute:  '/splash-screen',
      routes: {
        '/splash-screen': (context) => SplashScreen(),
        '/': (context) => FirstScreen(),
        SignUpScreen.routeName: (ctx) => SignUpScreen(),
        WelcomeScreen.routeName: (ctx) => WelcomeScreen(),
        SignInScreen.routeName: (ctx) => SignInScreen(),
        TabsScreen.routeName: (ctx) => TabsScreen(),
        MainHomeScreen.routeName: (ctx) => MainHomeScreen(),
        ImageDetailScreen.routeName: (ctx) => ImageDetailScreen(),
        ChatDetailScreen.routeName: (ctx) => ChatDetailScreen(),
        ProfileScreen.routeName: (ctx) => ProfileScreen(),
        WalletScreen.routeName: (ctx) => WalletScreen(),
        VerifyAccount.routeName: (ctx) => VerifyAccount(),
        InternationalPassportScreen.routeName: (ctx) => InternationalPassportScreen(),
        VerifyAccountNumberScreen.routeName: (ctx) => VerifyAccountNumberScreen(),
        AccountVerifiedScreen.routeName: (ctx) => AccountVerifiedScreen(),
      }
    );
  }
}
