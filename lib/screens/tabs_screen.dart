import 'package:flutter/material.dart';

import '../widgets/main_drawer.dart';
import 'bottom_icon_chat_screen.dart';
import 'bottom_icon_home_screen.dart';
import 'bottom_icon_like_screen.dart';
import 'bottom_icon_notification_screen.dart';

// import '../widgets/main_drawer.dart';



class TabsScreen extends StatefulWidget {
  static const routeName = '/tabs-screen';

  @override
  _TabsScreenState createState() => _TabsScreenState();
}

class _TabsScreenState extends State<TabsScreen> {
  // final box = GetStorage();

  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    // launcherTimer();
  }


  // launcherTimer() {
  //   // print(DateTime.fromMillisecondsSinceEpoch(box.read('firstLaunch')).difference(DateTime.now()).inSeconds);
  //   if(box.read("firstLaunch") == null){
  //     box.write("firstLaunch",
  //         DateTime.now().millisecondsSinceEpoch);
  //   }else {
  //     if(DateTime.fromMillisecondsSinceEpoch(box.read('firstLaunch')).difference(DateTime.now()).inDays <= -90){
  //       print('hello kayson');
  //       box.write('afterThreeMonth', true);
  //
  //     }
  //
  //   }
  //
  // }

  final List<Map<String, Object>> _pages = [
    {
      'page':  BottomIconHomeScreen(),
      'title': 'Home',
    },
    {
      'page':  BottomIconLikeScreen(),
      'title': 'Recycling',
    },
    {
      'page':  BottomIconNotificationScreen(),
      'title': 'Leaderboard',
    },
    {
      'page': BottomIconChatScreen(),
      'title': 'Profile',
    },
  ];
  int _selectedPageIndex = 0;

  void _selectPage(int index) {
    setState(() {
      _selectedPageIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        // title: Text(_pages[_selectedPageIndex]['title'] as String),
      ),
      drawer: MainDrawer(),
      body: _pages[_selectedPageIndex]['page']  as Widget,

      bottomNavigationBar: BottomNavigationBar(
        onTap: _selectPage,
        backgroundColor: Theme.of(context).primaryColor,
        unselectedItemColor: Colors.grey,
        selectedItemColor: Color(0xff668342),
        currentIndex: _selectedPageIndex,
        // type, BottomNavigationBarType.fixed,
        items: [
          BottomNavigationBarItem(
            // backgroundColor: Theme.of(context).primaryColor,
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            // backgroundColor: Theme.of(context).primaryColor,
            icon: Icon(Icons.heart_broken),
            label: 'Recycling',
          ),
          BottomNavigationBarItem(
            // backgroundColor: Theme.of(context).primaryColor,
            icon: Icon(Icons.notifications_active),
            label: 'Leaderboard',
          ),
          BottomNavigationBarItem(
            // backgroundColor: Theme.of(context).primaryColor,
            icon: Icon(Icons.message),
            label: 'Profile',
          ),
        ],
      ),
    );
  }
}
