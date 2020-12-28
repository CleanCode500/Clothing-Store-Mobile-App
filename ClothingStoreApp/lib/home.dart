import 'package:clothing_store_app/account.dart';
import 'package:clothing_store_app/favorites.dart';
import 'package:clothing_store_app/search.dart';
import 'package:clothing_store_app/basket.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';


class User {
  String username, id;
  User(this.id, this.username);
}

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _bottomNavIndex = 0;

  final tabs = [
    MainContent(),
    Search(),
    Basket(),
    Favorites(),
    MyAccount(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        iconSize: 28,
        fixedColor: Colors.black,
        currentIndex: _bottomNavIndex,
        onTap: (int index){
          setState(()
          {
              _bottomNavIndex = index;            
          });
        },
        showSelectedLabels: false,
        showUnselectedLabels: false,
        items: [
          BottomNavigationBarItem(label: 'Home',icon: Icon(Icons.home_outlined)),
          BottomNavigationBarItem(label: 'Search',icon: Icon(Icons.search)),
          BottomNavigationBarItem(label: 'Basket',icon: Icon(Icons.shopping_basket_outlined)),
          BottomNavigationBarItem(label: 'Favorites',icon: Icon(Icons.favorite_border)),
          BottomNavigationBarItem(label: 'Account',icon: Icon(Icons.person_outline)),
        ],
      ),
      body: tabs[_bottomNavIndex],
    );
  }
}

class MainContent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.all(20),
            child: new Container(
                child: new Column(
              children: [
                Row(
                  children: <Widget>[
                    new Expanded(
                      child: Container(
                        height: 300,
                        child: new Column(
                          children: <Widget>[
                            new Container(
                              height: 250,
                              decoration: new BoxDecoration(
                                image: new DecorationImage(
                                    image: new NetworkImage(
                                        'https://i.pinimg.com/originals/03/da/b4/03dab4e312cf3517f593d394734f7f9a.jpg'),
                                    fit: BoxFit.cover),
                              ),
                            ),
                            SizedBox(height: 5),
                            new Text("JEANS"),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(width: 20.0),
                    new Expanded(
                      child: Container(
                        height: 300,
                        child: new Column(
                          children: <Widget>[
                            new Container(
                              height: 250,
                              decoration: new BoxDecoration(
                                image: new DecorationImage(
                                    image: new NetworkImage(
                                        'https://i.pinimg.com/originals/03/da/b4/03dab4e312cf3517f593d394734f7f9a.jpg'),
                                    fit: BoxFit.cover),
                              ),
                            ),
                            SizedBox(height: 5),
                            new Text("JEANS"),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
                Row(
                  children: <Widget>[
                    new Expanded(
                      child: Container(
                        height: 300,
                        child: new Column(
                          children: <Widget>[
                            new Container(
                              height: 250,
                              decoration: new BoxDecoration(
                                image: new DecorationImage(
                                    image: new NetworkImage(
                                        'https://i.pinimg.com/originals/03/da/b4/03dab4e312cf3517f593d394734f7f9a.jpg'),
                                    fit: BoxFit.cover),
                              ),
                            ),
                            SizedBox(height: 5),
                            new Text("JEANS"),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(width: 20.0),
                    new Expanded(
                      child: Container(
                        height: 300,
                        child: new Column(
                          children: <Widget>[
                            new Container(
                              height: 250,
                              decoration: new BoxDecoration(
                                image: new DecorationImage(
                                    image: new NetworkImage(
                                        'https://i.pinimg.com/originals/03/da/b4/03dab4e312cf3517f593d394734f7f9a.jpg'),
                                    fit: BoxFit.cover),
                              ),
                            ),
                            SizedBox(height: 5),
                            new Text("JEANS"),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
                Row(
                  children: <Widget>[
                    new Expanded(
                      child: Container(
                        height: 300,
                        child: new Column(
                          children: <Widget>[
                            new Container(
                              height: 250,
                              decoration: new BoxDecoration(
                                image: new DecorationImage(
                                    image: new NetworkImage(
                                        'https://i.pinimg.com/originals/03/da/b4/03dab4e312cf3517f593d394734f7f9a.jpg'),
                                    fit: BoxFit.cover),
                              ),
                            ),
                            SizedBox(height: 5),
                            new Text("JEANS"),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(width: 20.0),
                    new Expanded(
                      child: Container(
                        height: 300,
                        child: new Column(
                          children: <Widget>[
                            new Container(
                              height: 250,
                              decoration: new BoxDecoration(
                                image: new DecorationImage(
                                    image: new NetworkImage(
                                        'https://i.pinimg.com/originals/03/da/b4/03dab4e312cf3517f593d394734f7f9a.jpg'),
                                    fit: BoxFit.cover),
                              ),
                            ),
                            SizedBox(height: 5),
                            new Text("JEANS"),
                          ],
                        ),
                      ),
                    ),
                  ],
                )
              ],
            )),
          )
        ],
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
