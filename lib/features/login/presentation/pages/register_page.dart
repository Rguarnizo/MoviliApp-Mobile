import 'package:flutter/material.dart';
import 'package:moviliapp_mobile/core/widgets/text_form_field.dart';


class RegisterPage extends StatelessWidget {
  RegisterPage({Key key}) : super(key: key);

  double heigth;
  double widht;


  @override
  Widget build(BuildContext context) {
    
    final sizeScreen = MediaQuery.of(context).size;
    
    heigth = sizeScreen.height;
    widht  = sizeScreen.width;

    return Scaffold(
      appBar: getAppBar(),
      body: Container(
        height: heigth,
        width: widht,
        decoration: BoxDecoration(
          gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: [Colors.red, Colors.red[900]]),
        ),
        child: Column(
          children: [
            _emailAndPassword(),
            _extraInformation(),
            
          ],
        ),
      ),
    );
  }

  getAppBar() {
    return AppBar(
      title: Text('Registrarse'),      
    );
  }

  _emailAndPassword() {
    return Container(

      decoration: BoxDecoration(color: Colors.white,
      borderRadius: BorderRadius.circular(16)),
      margin: EdgeInsets.symmetric(horizontal: 10,vertical: 15),
      padding: EdgeInsets.symmetric(horizontal: 30,vertical: 10),
      child: Column(children: [
        TextFormFieldApp(hint: 'Correo Electronico',icon: Icons.email_outlined,),
        TextFormFieldApp(hint: 'Contraseña',icon: Icons.lock_outline,),
        TextFormFieldApp(hint: 'Repetir contraseña',icon: Icons.lock_open,),
      ],),
    );
  }

  _extraInformation() {}
}

