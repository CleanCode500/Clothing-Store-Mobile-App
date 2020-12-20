import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class User {
  String username, id;
  User(this.id, this.username);
}

class HackerNewsApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final currentUser = FirebaseAuth.instance.currentUser;
    final db = FirebaseFirestore.instance;
    final firebaseUser = db.collection('users').doc(currentUser.uid);
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(
          color: Colors.black, //change your color here
        ),
        backgroundColor: Colors.white,
        title: Text(
          'MY ACCOUNT',
          style: TextStyle(color: Colors.black, fontSize: 18),
        ),
        centerTitle: true,
        actions: <Widget>[
          IconButton(
            icon: Icon(
              Icons.settings,
              color: Colors.black,
            ),
            onPressed: () {
              // do something
            },
          )
        ],
      ),
      body: StreamBuilder(
        stream: firebaseUser.snapshots(),
        builder: (context, AsyncSnapshot<DocumentSnapshot> snapshot) {
          String username;
          if (snapshot.hasData) {
            username = snapshot.data['username'];
          }
          return AppPage(
            user: User(currentUser.uid, username),
          );
        },
      ),
    );
  }
}

class AppPage extends StatelessWidget {
  final User user;
  AppPage({this.user});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: StreamBuilder(
            stream:
                FirebaseFirestore.instance.collection('clothes').snapshots(),
            builder: (context, AsyncSnapshot<QuerySnapshot> snapshot) {
              if (!snapshot.hasData) {
                return Center(
                  child: CircularProgressIndicator(),
                );
              }
              List<DocumentSnapshot> docs = snapshot.data.docs;
              return ListView.builder(
                  itemCount: docs.length,
                  itemBuilder: (context, index) {
                    Map<String, dynamic> data = docs[index].data();

                    return ListTile(
                      leading: Text(data['price'].toString() + '€'),
                      title: Text(data['name']),
                    );
                  });
            }));
  }
}

class WelcomeUser extends StatelessWidget {
  final User user;
  WelcomeUser({this.user});

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      body: new Padding(
        padding: const EdgeInsets.fromLTRB(150, 15, 0, 0),
        child: new RichText(
          textAlign: TextAlign.center,
          text: TextSpan(
            children: <TextSpan>[
              TextSpan(
                  text: 'Hey, \n',
                  style: TextStyle(fontSize: 18, color: Colors.black)),
              TextSpan(
                  text: ' ${user.username}',
                  style: TextStyle(
                      fontSize: 22,
                      color: Colors.black,
                      fontWeight: FontWeight.w800)),
            ],
          ),
        ),
      ),
    );
  }
}
