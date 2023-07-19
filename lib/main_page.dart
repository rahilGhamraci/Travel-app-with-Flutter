import 'package:flutter/material.dart';
import 'package:travel_app/home_page.dart';
import 'package:travel_app/likes_page.dart';
import 'package:travel_app/location_page.dart';
import 'package:travel_app/profile_page.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  @override
   int currentIndex=0;
  List pages=[
    HomePage(),
    LocationPage(),
    LikesPage(),
    ProfilePage(),
  ];
  void onTap(int index){
    setState(() {
      currentIndex=index;
    });
  }
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages[currentIndex],
        backgroundColor: Colors.white,
        bottomNavigationBar: BottomNavigationBar(
         unselectedFontSize: 0,
        selectedFontSize: 0,
        backgroundColor: Colors.white,
        selectedItemColor: Colors.lightBlue,
        unselectedItemColor: Colors.grey,
          showSelectedLabels: true,
          showUnselectedLabels: true,
          selectedLabelStyle:TextStyle(color:Colors.lightBlue, fontSize: 10),
          unselectedLabelStyle:TextStyle(color:Colors.grey,fontSize: 10),
          currentIndex: currentIndex,
          onTap: onTap,

      items: [
          BottomNavigationBarItem(label: "home",icon: Icon(Icons.home)),
          BottomNavigationBarItem(label: "location",icon: Icon(Icons.location_on)),
         BottomNavigationBarItem(label: "like",icon: Icon(Icons.favorite)),
          BottomNavigationBarItem(label: "profile",icon: Icon(Icons.person)),
        ]),
    );
  }
}