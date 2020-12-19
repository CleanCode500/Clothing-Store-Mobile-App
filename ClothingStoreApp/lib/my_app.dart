import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    final user = FirebaseAuth.instance.currentUser;
    return MaterialApp(
      title: 'My App which needs login',
      home: Scaffold(
        body: Container(
          decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage("assets/background.jpg"),
                  fit: BoxFit.cover)),
          padding: EdgeInsets.all(35),
          child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                ButtonTheme(
                  height: 60,
                  child: FlatButton(
                    onPressed: () {},
                    color: Colors.white,
                    child: Text(
                      "MUJER",
                      style: TextStyle(fontSize: 16, color: Colors.black),
                    ),
                  ),
                ),
                SizedBox(height: 18),
                ButtonTheme(
                  height: 60.0,
                  child: FlatButton(
                    onPressed: () {},
                    color: Colors.white,
                    child: Text(
                      "HOMBRE",
                      style: TextStyle(fontSize: 16, color: Colors.black),
                    ),
                  ),
                ),
              ]),
        ),
      ),
    );
  }
}
