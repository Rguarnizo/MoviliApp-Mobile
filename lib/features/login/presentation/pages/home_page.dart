import 'package:flutter/material.dart';


class HomePage extends StatelessWidget {
  const HomePage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        items: [        
          BottomNavigationBarItem(icon: Icon(Icons.directions_bus),label: ''),
          BottomNavigationBarItem(icon: Icon(Icons.home_outlined),label: ''), 
          BottomNavigationBarItem(icon: Icon(Icons.monetization_on),label: ''),        
        ]
        ),
    );
  }
}