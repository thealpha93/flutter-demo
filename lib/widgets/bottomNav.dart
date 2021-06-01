import 'package:flutter/material.dart';

class BottomNav extends StatefulWidget {
  @override
  _BottomNavState createState() => _BottomNavState();
}

class _BottomNavState extends State<BottomNav> {
  int selectedIndex = 0;
  static const TextStyle optionStyle =
      TextStyle(fontSize: 30, fontWeight: FontWeight.bold);
  static const List<Widget> _widgetOptions = <Widget>[
    Text(
      'Index 0: Home',
      style: optionStyle,
    ),
    Text(
      'Index 1: Business',
      style: optionStyle,
    ),
    Text(
      'Index 2: School',
      style: optionStyle,
    ),
  ];

  void _onItemTapped(int index) {
    setState(() {
      selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      items: const <BottomNavigationBarItem>[
        BottomNavigationBarItem(
          icon: Icon(Icons.analytics),
          label: '',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.email),
          label: '',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.card_giftcard_outlined),
          label: '',
        ),
      ],
      currentIndex: selectedIndex,
      selectedItemColor: Theme.of(context).accentColor,
      onTap: _onItemTapped,
    );
  }
}
