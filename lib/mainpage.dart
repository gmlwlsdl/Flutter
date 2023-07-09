import 'package:flutter/material.dart';
import 'package:namer_app/mainpages/homescreen.dart';
import 'package:namer_app/mainpages/mylikescreen.dart';
import 'package:namer_app/mainpages/myscreen.dart';
import 'package:namer_app/mainpages/showgridscreen.dart';

class MainPage extends StatefulWidget {
  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int _selectedIndex = 0;
  List<BottomNavigationBarItem> bottomItems = [
    BottomNavigationBarItem(
      label: 'Home',
      icon: Icon(Icons.home_filled),
    ),
    BottomNavigationBarItem(
      label: 'My',
      icon: Icon(Icons.account_circle),
    ),
    BottomNavigationBarItem(
      label: 'Grid',
      icon: Icon(Icons.grid_view_rounded),
    ),
    BottomNavigationBarItem(
      label: 'MyLike',
      icon: Icon(Icons.favorite),
    ),
  ];

  List pages = [
    HomeScreen(),
    Myscreen(),
    ShowGridScreen(),
    MylikeScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'testGram',
          style: TextStyle(
              fontFamily: 'NanumMyeongjo', fontSize: 30, color: Colors.black),
        ),
        centerTitle: true,
        backgroundColor: Colors.white,
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        backgroundColor: Colors.white,
        selectedItemColor: Colors.black,
        unselectedItemColor: Colors.grey.withOpacity(.60),
        selectedFontSize: 14,
        unselectedFontSize: 10,
        currentIndex: _selectedIndex,

        //showSelectedLabels: false,
        //showUnselectedLabels: false, 글자 안 보이게 하기

        onTap: (int index) {
          setState(() {
            _selectedIndex = index;
          });
        },
        items: bottomItems,
      ),
      body: pages[_selectedIndex],
    );
  }
}
