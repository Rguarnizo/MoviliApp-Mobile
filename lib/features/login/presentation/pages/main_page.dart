import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:moviliapp_mobile/features/login/presentation/pages/home_page.dart';

class MainPage extends StatelessWidget {
  const MainPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    final height = screenSize.height;
    final widht = screenSize.width;

    return Scaffold(
      bottomNavigationBar: CurvedNavigationBar(
        index: 1,
        backgroundColor: Colors.red,
        items: [
          Icon(
            Icons.directions_bus,
          ),
          Icon(Icons.home_outlined),
          Icon(Icons.monetization_on),
        ],
        onTap: (i) {

        },
      ),
      body: HomePage(),
    );
  }
}
