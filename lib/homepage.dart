import 'package:farm/helper/HomePage.dart';
import 'package:farm/helper/chat.dart';
import 'package:farm/helper/listview.dart';
import 'package:farm/helper/orders.dart';
import 'package:farm/helper/profile.dart';
import 'package:farm/helper/reqt.dart';

import 'package:flutter/material.dart';

class MyHome extends StatefulWidget {
  MyHome({Key? key}) : super(key: key);

  @override
  _MyHomeState createState() => _MyHomeState();
}

class _MyHomeState extends State<MyHome> {
  HomePage homePage = new HomePage();
  Helper helper = new Helper();
  int _currentIndex = 0;
  void _updateIndex(int value) {
    setState(() {
      _currentIndex = value;
    });
  }

  List screens = [HomePage(), Chat(), Requirement(), Orders(), Profile()];
  List titles = ["FarmsBook", "Chats", "Requiremennt", "Orders", "Profile"];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text(
          titles[_currentIndex],
          style: TextStyle(fontSize: 25),
        ),
        actions: [
          Padding(
            padding: EdgeInsets.only(left: 20),
            child: IconButton(
              color: Colors.lightGreen,
              icon: Icon(
                Icons.search,
                size: 30,
              ),
              onPressed: () {},
            ),
          )
        ],
      ),
      body: screens[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.lightGreen,
        type: BottomNavigationBarType.fixed,
        currentIndex: _currentIndex,
        onTap: _updateIndex,
        selectedItemColor: Colors.white,
        selectedFontSize: 13,
        unselectedFontSize: 13,
        iconSize: 30,
        items: [
          BottomNavigationBarItem(
            label: "Home",
            icon: Icon(Icons.home),
          ),
          BottomNavigationBarItem(
            label: "Chat",
            icon: Icon(Icons.question_answer_outlined),
          ),
          BottomNavigationBarItem(
            label: "Requirement",
            icon: Icon(Icons.query_builder_sharp),
          ),
          BottomNavigationBarItem(
            label: "Orders",
            icon: Icon(Icons.car_rental_outlined),
          ),
          BottomNavigationBarItem(
            label: "Profile",
            icon: Icon(Icons.account_circle_outlined),
          ),
        ],
      ),
    );
  }
}
