import 'package:flutter/material.dart';
import 'package:job_go_app/Features/Home/pages/home-view.dart';
import 'package:job_go_app/Features/Messages/pages/message_view.dart';
import 'package:job_go_app/Features/Profile/pages/pofile_page.dart';
import 'package:job_go_app/Features/Settings/pages/settings_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int selectedIndex = 0;

  final tabs = [
    HomeView(),
    Messages(),
    Profile(),
    Settings()
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade50,
      body: IndexedStack(
        children: tabs,
        index: selectedIndex,
      ),


      bottomNavigationBar: BottomNavigationBar(
        currentIndex: selectedIndex ,
        selectedItemColor: Colors.teal,
          unselectedItemColor: Colors.grey,
          showSelectedLabels: false,
          showUnselectedLabels: true,
          items: [
            BottomNavigationBarItem(
                icon: Icon(Icons.home),
            label: 'Home'),
            BottomNavigationBarItem(
                icon: Icon(Icons.message),
                label: 'Messages'),
            BottomNavigationBarItem(
                icon: Icon(Icons.person),
                label: 'Profile'),
            BottomNavigationBarItem(
                icon: Icon(Icons.settings),
                label: 'Settings'),
          ],
         onTap: (index){
          setState(() {
            selectedIndex= index;
          });
        },
      ),
    );
  }
}
