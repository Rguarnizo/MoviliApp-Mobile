import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    final height = screenSize.height;
    final width = screenSize.width;
    return Container(
      height: height,
      width: width,
      color: Colors.red,
      child: Column(
        children: [
          Container(                
            width: width,
            padding: EdgeInsets.all(30),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,              
              children: [
                Stack(           
                  alignment: Alignment.bottomCenter,   
                  children: [
                  CircleAvatar(radius: 50,child: Text('perfilFoto'),),
                  Text('Name Here',style: TextStyle(color: Colors.white),)
                  ]
                ),
                SizedBox(width: 10,),
                Column(                  
                  mainAxisSize: MainAxisSize.max,                  
                  children: [
                  Text('Saldo',style: TextStyle(color: Colors.white,fontSize: 18),),
                  Text('\$Value',style: TextStyle(color: Colors.white,fontSize: 18),)
                  ]
                ),                
              ],
            ),
          ),
        ],
      ),
    );
  }
}
