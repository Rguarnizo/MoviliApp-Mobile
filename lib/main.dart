import 'package:flutter/material.dart';
import 'package:moviliapp_mobile/routes/routes.dart';
 
void main() => runApp(MyApp());
 
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      debugShowCheckedModeBanner: false,
      routes: getRoutes(),
      initialRoute: 'Login',
    );
  }
}
