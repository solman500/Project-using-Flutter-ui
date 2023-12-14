import 'package:flutter/material.dart';
import 'package:project/presentation/messenger/messenger.dart';
import 'package:project/presentation/user_view/user__view.dart';

class BottomNavLayout extends StatefulWidget {
  const BottomNavLayout({super.key});

  @override
  State<BottomNavLayout> createState() => _BottomNavLayoutState();
}

class _BottomNavLayoutState extends State<BottomNavLayout> {
  int _selectedIndex=0 ;
   List<Widget> screens=[MessengerScreen(),UserView()];
  void chageTap(int index){


setState(() {
  _selectedIndex = index ;
});
print(_selectedIndex) ;

  }
  
  @override
  Widget build(BuildContext context) {
    return  Scaffold(

      body:screens[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(items:
       [
BottomNavigationBarItem(icon: Icon(Icons.chat),label:"Chat"),
BottomNavigationBarItem(icon: Icon(Icons.account_circle),label:"Albums"),
      ],
      currentIndex: _selectedIndex,
      selectedItemColor: Colors.red[800],
      onTap: chageTap,   
      ),
    );
  }
}