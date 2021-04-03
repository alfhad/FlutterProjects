import 'dart:ui';

import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
    home: Scaffold(
      backgroundColor: Colors.lightGreen,
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            CircleAvatar(
              radius: 50.0,
              backgroundImage: AssetImage('images/self.png'),
            ),
            Text(
              "Adolf Hitler",
              style: TextStyle(
                fontSize: 35.0,
                color: Colors.white70,
                fontWeight: FontWeight.bold,
                fontFamily: 'Pacifico'
              ),
            ),
            Text(
              "NIGHTMARE FOR 'THE JEWS'",
              style: TextStyle(
                fontFamily: 'SourceSansPro',
                color: Colors.lightGreen.shade100,
                fontSize: 20.0,
                letterSpacing: 3.0,
                fontWeight: FontWeight.bold
              ),
            ),
            Card(
              color: Colors.green.shade900,
              margin: EdgeInsets.symmetric(vertical: 15.0, horizontal: 30.0),
              //  child: Row(
              //   children: <Widget>[
              //     Icon(
              //       Icons.phone,
              //       size: 30.0,
              //       color: Colors.white60,
              //     ),
              //     SizedBox(
              //       width: 10.0,
              //     ),
              //     Text(
              //       "+1 091 190 8888",
              //       style: TextStyle(
              //         color: Colors.white60,
              //         fontSize: 20.0,
              //         fontFamily: 'SourceSansPro',
              //         letterSpacing: 1.0
              //       ),
              //     )
              //   ],
              // ),
              child: ListTile(
                leading: const Icon(
                  Icons.phone,
                  size: 30.0,
                  color: Colors.white60
                ),
                title: const Text(
                  "+49 696 9696 969",
                  style: TextStyle(
                    color: Colors.white60,
                    fontSize: 20.0,
                    fontFamily: 'SourceSansPro',
                    letterSpacing: 1.0
                  ),
                ),
              ),
            ),
            Card(
              color: Colors.green.shade900,
              margin: EdgeInsets.symmetric(vertical: 15.0, horizontal: 30.0),
              // child: Row(
              //   children: <Widget>[
              //     Icon(
              //       Icons.email,
              //       size: 30.0,
              //       color: Colors.white60,
              //     ),
              //     SizedBox(
              //       width: 10.0,
              //     ),
              //     Text(
              //       "fahad@email.com",
              //       style: TextStyle(
              //           color: Colors.white60,
              //           fontSize: 20.0,
              //           fontFamily: 'SourceSansPro',
              //           letterSpacing: 1.0
              //       ),
              //     )
              //   ],
              // ),
              child: ListTile(
                leading: const Icon(
                  Icons.email,
                  size: 30.0,
                  color: Colors.white60,
                ),
                title: const Text(
                  "hitler@nazi.germany",
                  style: TextStyle(
                    color: Colors.white60,
                    fontSize: 20.0,
                    fontFamily: 'SourceSansPro',
                    letterSpacing: 1.0
                  ),
                ),
              ),
            ),
            ],
        )
      ),
    ),
    );
  }
}
