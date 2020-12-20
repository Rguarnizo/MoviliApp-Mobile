


import 'package:flutter/material.dart';
import 'package:moviliapp_mobile/features/login/presentation/pages/Login_page.dart';
import 'package:moviliapp_mobile/features/login/presentation/pages/main_page.dart';
import 'package:moviliapp_mobile/features/login/presentation/pages/register_page.dart';


Map<String,WidgetBuilder> getRoutes() => {
    'Login'   : (BuildContext context)  => LoginPage(),
    'Register': (BuildContext context)  => RegisterPage(),
    'Main'    : (BuildContext context)  => MainPage(),
    
};