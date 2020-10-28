import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

int _count = 0;

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.grey[600],
        appBar: AppBar(
          actions: [
            IconButton(
                icon: Icon(
                  Icons.menu,
                  color: Colors.white60,
                  size: 30.0,
                ),
                onPressed: null),
          ],
          backgroundColor: Colors.grey[900],
          title: Center(
            child: Text(
              'Ninja Id',
              style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 24.0,
                  letterSpacing: 1.0),
            ),
          ),
        ),
        body: Column(
          children: [
            SizedBox(
              height: 80.0,
            ),
            CircleAvatar(
              backgroundColor: Colors.redAccent,
              backgroundImage: AssetImage('assets/image/profile.jpg'),
              radius: 80.0,
            ),
            SizedBox(
              height: 30.0,
            ),
            Text(
              'Ninja Level',
              style: TextStyle(
                color: Colors.amber,
                fontFamily: 'SourceSansPro',
                letterSpacing: 2.0,
                fontSize: 30.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(
              height: 10.0,
            ),
            Text(
              'Felex Kuria',
              style: TextStyle(
                color: Colors.white,
                fontFamily: 'Quicksand',
                letterSpacing: 2.0,
                fontSize: 24.0,
                fontWeight: FontWeight.w600,
              ),
            ),
            Text(
              '  $_count',
              style: TextStyle(
                  color: Colors.amber, letterSpacing: 5.0, fontSize: 30.0),
            ),
            SizedBox(
              height: 30.0,
            ),
            Padding(
              padding: EdgeInsets.all(16.0),
              child: Container(
                padding: EdgeInsets.all(16.0),
                color: Colors.teal,
                child: Row(
                  children: [
                    Icon(
                      Icons.email,
                      size: 30.0,
                      color: Colors.white,
                    ),
                    SizedBox(
                      width: 10.0,
                    ),
                    Text(
                      'info@multi-touchenterprisekenya.co.ke',
                      style: TextStyle(
                          color: Colors.white,
                          fontFamily: 'Quicksand',
                          letterSpacing: -1.2,
                          fontSize: 20.0,
                          fontWeight: FontWeight.w600),
                    )
                  ],
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.all(16.0),
              child: Center(
                child: Container(
                  padding: EdgeInsets.all(16.0),
                  color: Colors.teal,
                  child: Row(
                    children: [
                      Icon(
                        Icons.phone,
                        size: 30.0,
                        color: Colors.white,
                      ),
                      SizedBox(
                        width: 10.0,
                      ),
                      Text(
                        'Sale Department',
                        style: TextStyle(
                          color: Colors.white,
                          fontFamily: 'Pacifico',
                          letterSpacing: 1.2,
                          fontSize: 20.0,
                          // fontWeight: FontWeight.w600
                        ),
                      )
                    ],
                  ),
                ),
              ),
            )
          ],
        ),
        // SettingScreen()
        floatingActionButton: FloatingActionButton(
          backgroundColor: Colors.red[600],
          onPressed: () {
            setState(() {
              _count++;
            });
            // print('felix');
          },
          child: (Icon(
            Icons.add,
            color: Colors.blueGrey,
            size: 30.0,
          )),
        ),
      ),
    );
  }
}
