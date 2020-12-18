import 'package:flutter/material.dart';
import 'package:moviliapp_mobile/routes/routes.dart';
 
void main() => runApp(MyApp());
 
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      theme: ThemeData(
          primarySwatch: Colors.red,
          visualDensity: VisualDensity.adaptivePlatformDensity,
          fontFamily: 'SourceSansPro'),
      debugShowCheckedModeBanner: false,
      routes: getRoutes(),
      initialRoute: 'Login',
    );
  }
}
