import 'package:flutter/material.dart';

class MainBizCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return _circleImg();
  }

  Widget _circleImg() {
    return Scaffold(
      backgroundColor: Colors.deepPurpleAccent,
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            CircleAvatar(
              radius: 50.0,
              backgroundImage: AssetImage('images/pp.jpg'),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              'Kashif Anwaar',
              style: TextStyle(
                color: Colors.white,
                fontSize: 28,
                fontFamily: 'Courgette',
              ),
            ),
            SizedBox(
              height: 1,
            ),
            Text(
              'Software Developer',
              style: TextStyle(
                color: Colors.white,
                fontSize: 16,
                fontFamily: 'CourierPrime',
                letterSpacing: 2,
              ),
            ),
            SizedBox(
              height: 20,
              width: 250,
              child: Divider(
                color: Colors.deepPurpleAccent.shade100,
              ),
            ),
            Card(
              color: Colors.white,
              margin: EdgeInsets.symmetric(vertical: 10, horizontal: 25),
              child: ListTile(
                leading: Icon(
                  Icons.phone,
                  color: Colors.deepPurpleAccent,
                ),
                title: Text(
                  '+91-8124093653',
                  style: TextStyle(
                    color: Colors.deepPurpleAccent,
                    fontWeight: FontWeight.bold,
                    fontSize: 16,
                  ),
                ),
              ),
            ),
            Card(
              color: Colors.white,
              margin: EdgeInsets.symmetric(vertical: 10, horizontal: 25),
              child: ListTile(
                leading: Icon(
                  Icons.email,
                  color: Colors.deepPurpleAccent,
                ),
                title: Text(
                  'koderkashif@gmail.com',
                  style: TextStyle(
                    color: Colors.deepPurpleAccent,
                    fontWeight: FontWeight.bold,
                    fontSize: 16,
                  ),
                ),
              ),
            ),
            Container(
              width: double.infinity,
            )
          ],
        ),
      ),
    );
  }
}
