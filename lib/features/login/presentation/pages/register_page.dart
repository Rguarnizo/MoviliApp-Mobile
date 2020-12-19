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
      body: SingleChildScrollView(
          child: Container(
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
              _registerButton(),
              
            ],
          ),
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

  _extraInformation() {
    return Container(

      decoration: BoxDecoration(color: Colors.white,
      borderRadius: BorderRadius.circular(16)),
      margin: EdgeInsets.symmetric(horizontal: 10,vertical: 5),
      padding: EdgeInsets.symmetric(horizontal: 30,vertical: 10),
      child: Column(children: [
        TextFormFieldApp(hint: 'Nombres',icon: Icons.person,),
        TextFormFieldApp(hint: 'Apellidos',icon: Icons.person_outline,),
        TextFormFieldApp(hint: 'Cedula',icon: Icons.card_membership_outlined,),
      ],),
    );
  }

  _registerButton() {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 10),
      child: OutlinedButton.icon(
              onPressed: () {},
              icon: Icon(Icons.chevron_right, size: 18,color: Colors.white,),
              style: ButtonStyle(
              side: MaterialStateProperty.resolveWith((states) => BorderSide(color: Colors.white)),             
              ),            
              label: Text(
                "Completar Registro",
                style: TextStyle(fontSize: 20,color: Colors.white),
                
              ),
            ),
    );
  }
}

