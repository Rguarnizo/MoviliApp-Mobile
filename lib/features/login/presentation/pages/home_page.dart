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
      child: SafeArea(
              child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              margin: EdgeInsets.all(10),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(16),
              ),
              width: width,
              padding: EdgeInsets.all(30),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Stack(alignment: Alignment.bottomCenter, children: [
                    CircleAvatar(
                      backgroundImage: NetworkImage('https://st3.depositphotos.com/13159112/17145/v/600/depositphotos_171453724-stock-illustration-default-avatar-profile-icon-grey.jpg'),
                      radius: 50,                    
                    ),
                    Text(
                      'Rubén Darío',
                      style: TextStyle(fontSize: 18),
                    )
                  ]),
                  SizedBox(
                    width: 10,
                  ),
                  Column(mainAxisSize: MainAxisSize.max, children: [
                    Text(
                      'Saldo',
                      style: TextStyle(fontSize: 18),
                    ),
                    Text(
                      '\$Value',
                      style: TextStyle(fontSize: 18),
                    )
                  ]),
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.all(20),
              
              margin: EdgeInsets.all(10),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(16),),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(            
                    padding: EdgeInsets.symmetric(horizontal: 20),
                    child: Row(
                      children: [
                        Text('Hola, ',
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 15,
                                color: Colors.white)),
                        Text(
                          'Rubén Darío',
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 16,
                              color: Colors.white),
                        )
                      ],
                    ),
                  ),
                  Container(              
                    padding: EdgeInsets.only(left: 40),
                      child: Text(
                    'Ven y viaja con nosotros!',
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 16,
                        color: Colors.grey[300],
                        ),
                  )),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
