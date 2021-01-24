import 'package:clothing_store_app/app.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class MyApp extends StatefulWidget {
  // This widget is the root of your application.
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    var themeData = ThemeData(
      primaryColor: Colors.black,
      fontFamily: 'FuturaPT',
    );
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'My App which needs login',
      theme: themeData,
      home: HomeScreen(),
    );
  }
}

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: StreamBuilder(
          stream: FirebaseFirestore.instance
              .collection('users')
              .doc(FirebaseAuth.instance.currentUser.email)
              .snapshots(),
          builder: (context, AsyncSnapshot<DocumentSnapshot> snapshot) {
            if (!snapshot.hasData) {
              return new Text("Loading");
            }
            return Stack(children: [
              Container(
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
                          color: Colors.white,
                          child: Text(
                            "WOMEN",
                            style: TextStyle(
                              fontSize: 16,
                              color: Colors.black,
                            ),
                          ),
                          onPressed: () {
                            Navigator.of(context).push(MaterialPageRoute(
                              builder: (context) => CustomNavigatorHomePage(),
                            ));
                          },
                        ),
                      ),
                      SizedBox(height: 18),
                      ButtonTheme(
                        height: 60.0,
                        child: FlatButton(
                          color: Colors.white,
                          child: Text(
                            "MEN",
                            style: TextStyle(
                              fontSize: 16,
                              color: Colors.black,
                            ),
                          ),
                          onPressed: () {
                            Navigator.of(context).push(MaterialPageRoute(
                              builder: (context) => CustomNavigatorHomePage(),
                            ));
                          },
                        ),
                      ),
                    ]),
              ),
              Container(
                padding: EdgeInsets.all(35),
                child: Align(
                  alignment: Alignment.topLeft,
                  child: ButtonTheme(
                    height: 50.0,
                    child: FlatButton(
                      onPressed: () {
                        FirebaseAuth.instance.signOut();
                      },
                      color: Colors.white,
                      child: Text(
                        "LOG OUT",
                        style: TextStyle(
                          fontSize: 16,
                          color: Colors.black,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ]);
          }),
    );
  }
}

class HomeScreen2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(children: [
        Container(
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
                    color: Colors.white,
                    child: Text(
                      "WOMEN",
                      style: TextStyle(
                        fontSize: 16,
                        color: Colors.black,
                      ),
                    ),
                    onPressed: () {
                      Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => CustomNavigatorHomePage(),
                      ));
                    },
                  ),
                ),
                SizedBox(height: 18),
                ButtonTheme(
                  height: 60.0,
                  child: FlatButton(
                    color: Colors.white,
                    child: Text(
                      "MEN",
                      style: TextStyle(
                        fontSize: 16,
                        color: Colors.black,
                      ),
                    ),
                    onPressed: () {
                      Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => CustomNavigatorHomePage(),
                      ));
                    },
                  ),
                ),
              ]),
        ),
        Container(
          padding: EdgeInsets.all(35),
          child: Align(
            alignment: Alignment.topLeft,
            child: ButtonTheme(
              height: 50.0,
              child: FlatButton(
                onPressed: () {
                  FirebaseAuth.instance.signOut();
                },
                color: Colors.white,
                child: Text(
                  "LOG OUT",
                  style: TextStyle(
                    fontSize: 16,
                    color: Colors.black,
                  ),
                ),
              ),
            ),
          ),
        ),
      ]),
    );
  }
}
