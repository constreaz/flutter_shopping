import 'package:flutter/material.dart';
import 'package:shop_app/constants.dart';
import 'package:shop_app/screens/home/home_screen.dart';
import 'package:shop_app/orchid_icon_icons.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  int _selectedIndex = 0;

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Tradaru',
      theme: ThemeData(
        textTheme: Theme.of(context).textTheme.apply(bodyColor: Colors.black87),
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: HomeScreen(),
      /*bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        elevation: 0.0,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(OrchidIcon.communication_37___24px),
            title: Text(''),
          ),
          BottomNavigationBarItem(
            icon: Icon(OrchidIcon.shipping_1___24px),
            title: Text(''),
          ),
          BottomNavigationBarItem(
            icon: Icon(OrchidIcon.performance_47___24px),
            title: Text(''),
          ),
          BottomNavigationBarItem(
            icon: Icon(OrchidIcon.user_2___24px),
            title: Text(''),
          ),
        ],
        currentIndex: _selectedIndex,
        unselectedItemColor: Colors.black45,
        selectedItemColor: Colors.purple,
      ),*/
    );
  }
}
