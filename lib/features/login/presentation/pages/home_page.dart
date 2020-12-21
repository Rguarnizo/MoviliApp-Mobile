import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    final height = screenSize.height;
    final width = screenSize.width;
    return SingleChildScrollView(
      child: Container(
        height: height,
        width: width,
        color: Colors.red,
        child: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              UserCard(),
              WelcomeMessage(),
              HistoryData(),
              Support(),
            ],
          ),
        ),
      ),
    );
  }
}

class UserCard extends StatelessWidget {
  const UserCard({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    final height = screenSize.height;
    final width = screenSize.width;

    return Container(
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
              backgroundImage: NetworkImage(
                  'https://st3.depositphotos.com/13159112/17145/v/600/depositphotos_171453724-stock-illustration-default-avatar-profile-icon-grey.jpg'),
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
    );
  }
}

class WelcomeMessage extends StatelessWidget {
  const WelcomeMessage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(20),
      margin: EdgeInsets.all(10),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(16),
      ),
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
                    )),
                Text(
                  'Rubén Darío',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 16,
                  ),
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
                  color: Colors.grey,
                ),
              )),
        ],
      ),
    );
  }
}

class HistoryData extends StatelessWidget {
  const HistoryData({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    final height = screenSize.height;
    final width = screenSize.width;

    return Container(
        margin: EdgeInsets.all(10),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(16),
        ),
        width: width,
        padding: EdgeInsets.all(15),
        child: Column(
          children: [
            Text(
              'Historial de viajes',
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            ),
            Container(
              height: 250,
              width: double.infinity,
              decoration: BoxDecoration(
                color: Colors.grey[200],
                borderRadius: BorderRadius.circular(16),
              ),
              child: ListView(
                children: [],
              ),
            )
          ],
        ));
  }
}

class Support extends StatelessWidget {
  const Support({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    final height = screenSize.height;
    final width = screenSize.width;

    return Container(
      margin: EdgeInsets.all(10),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(16),
      ),
      width: width,
      padding: EdgeInsets.all(15),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Icon(Icons.support_agent),
          Text(
            'Contactanos...',
            style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
          ),
          Text(
            '3777777',
            style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
          )
        ],
      ),
    );
  }
}
