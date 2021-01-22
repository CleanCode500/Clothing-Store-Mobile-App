import 'package:clothing_store_app/tile.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:custom_navigator/custom_navigator.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

class CustomNavigatorHomePage extends StatefulWidget {
  CustomNavigatorHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _CustomNavigatorHomePageState createState() =>
      _CustomNavigatorHomePageState();
}

class _CustomNavigatorHomePageState extends State<CustomNavigatorHomePage> {
  final List<Widget> _children = [
    Page1(),
    Page2(),
    Page3(),
    Page4(),
    Page5(),
  ];
  Widget _page = Page1();
  int _currentIndex = 0;

  GlobalKey<NavigatorState> navigatorKey = GlobalKey<NavigatorState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        iconSize: 28,
        fixedColor: Colors.black,
        items: _items,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        onTap: (index) {
          navigatorKey.currentState.maybePop();
          setState(() => _page = _children[index]);
          _currentIndex = index;
        },
        currentIndex: _currentIndex,
      ),
      body: CustomNavigator(
        navigatorKey: navigatorKey,
        home: _page,
        pageRoute: PageRoutes.materialPageRoute,
      ),
    );
  }

  final _items = [
    BottomNavigationBarItem(label: 'Home', icon: Icon(Icons.home_outlined)),
    BottomNavigationBarItem(label: 'Search', icon: Icon(Icons.search)),
    BottomNavigationBarItem(
        label: 'Basket', icon: Icon(Icons.shopping_basket_outlined)),
    BottomNavigationBarItem(
        label: 'Favorites', icon: Icon(Icons.favorite_border)),
    BottomNavigationBarItem(label: 'Account', icon: Icon(Icons.person_outline)),
  ];
}

class Page1 extends StatefulWidget {
  const Page1({Key key}) : super(key: key);

  @override
  _Page1State createState() => _Page1State();
}

class _Page1State extends State<Page1> with AutomaticKeepAliveClientMixin {
  @override
  // ignore: must_call_super
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
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
      ),
    );
  }

  @override
  bool get wantKeepAlive => true;
}

class Page2 extends StatelessWidget {
  const Page2({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          title: Text(
            "SEARCH",
            style: TextStyle(color: Colors.black, fontSize: 18),
          ),
          centerTitle: true,
        ),
        body: ListView(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(20),
              child: new Container(
                child: new Column(children: <Widget>[
                  ListTileScreen(
                    title: "HOODIES",
                    trailingImage: Image.asset(
                      'assets/images/novedades.png',
                      height: 100,
                    ),
                    color: Color(0xFFefefef),
                    onTab: () {},
                  ),
                  SizedBox(height: 20),
                  ListTileScreen(
                    title: "T-SHIRTS",
                    trailingImage: Image.asset(
                      'assets/images/shirt.png',
                      height: 100,
                    ),
                    color: Color(0xFFefefef),
                    onTab: () {},
                  ),
                  SizedBox(height: 20),
                  ListTileScreen(
                    title: "JEANS",
                    trailingImage: Image.asset(
                      'assets/images/jeans.png',
                      height: 100,
                    ),
                    color: Color(0xFFefefef),
                    onTab: () {},
                  ),
                  SizedBox(height: 20),
                  ListTileScreen(
                    title: "SUITS",
                    trailingImage: Image.asset(
                      'assets/images/suits.png',
                      height: 100,
                    ),
                    color: Color(0xFFefefef),
                    onTab: () {},
                  ),
                  SizedBox(height: 20),
                  ListTileScreen(
                    title: "SHOES",
                    trailingImage: Image.asset(
                      'assets/images/shoes.png',
                      height: 70,
                    ),
                    color: Color(0xFFefefef),
                    onTab: () {},
                  ),
                  SizedBox(height: 20),
                  ListTileScreen(
                    title: "ACCESSORIES",
                    trailingImage: Image.asset(
                      'assets/images/accessories.png',
                      height: 100,
                    ),
                    color: Color(0xFFefefef),
                    onTab: () {},
                  ),
                ]),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class Page3 extends StatelessWidget {
  const Page3({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          title: Text(
            "BAG",
            style: TextStyle(color: Colors.black, fontSize: 18),
          ),
          centerTitle: true,
        ),
        body: Column(
          children: [
            Container(
              padding: EdgeInsets.all(15),
              width: MediaQuery.of(context).size.width * 0.98,
              child: Container(
                color: Colors.white,
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.all(2.0),
                      child: ConstrainedBox(
                        constraints: BoxConstraints(
                          maxWidth: MediaQuery.of(context).size.width * 0.48,
                          maxHeight: MediaQuery.of(context).size.width * 0.48,
                        ),
                        child: Image.asset('assets/images/shirts.png',
                            fit: BoxFit.fill),
                      ),
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Container(
                          width: MediaQuery.of(context).size.width * 0.56,
                          child: Padding(
                            padding: const EdgeInsets.fromLTRB(10, 10, 0, 0),
                            child: Text(
                              '25.00€',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 18,
                              ),
                            ),
                          ),
                        ),
                        Container(
                          width: MediaQuery.of(context).size.width * 0.56,
                          child: Padding(
                            padding: const EdgeInsets.fromLTRB(10, 10, 0, 0),
                            child: Text(
                              'BURTON Menswear long sleeve shirt in red & tan check',
                              style: TextStyle(
                                fontSize: 14,
                              ),
                            ),
                          ),
                        ),
                        Row(
                          children: [
                            Container(
                              width: MediaQuery.of(context).size.width * 0.28,
                              child: Padding(
                                padding:
                                    const EdgeInsets.fromLTRB(10, 10, 0, 0),
                                child: Row(
                                  children: [
                                    Text(
                                      'CREAM',
                                      style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 12,
                                      ),
                                    ),
                                    Material(
                                      color: Colors.transparent,
                                      child: Center(
                                        child: Ink(
                                          decoration: const ShapeDecoration(
                                            color: Colors.transparent,
                                            shape: CircleBorder(),
                                          ),
                                          child: IconButton(
                                              icon: Icon(
                                                MdiIcons.chevronDown,
                                                size: 20,
                                              ),
                                              onPressed: () {}),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            Container(
                              width: MediaQuery.of(context).size.width * 0.28,
                              child: Padding(
                                padding:
                                    const EdgeInsets.fromLTRB(10, 10, 0, 0),
                                child: Row(
                                  children: [
                                    Text(
                                      'M',
                                      style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 12,
                                      ),
                                    ),
                                    Material(
                                      color: Colors.transparent,
                                      child: Center(
                                        child: Ink(
                                          decoration: const ShapeDecoration(
                                            color: Colors.transparent,
                                            shape: CircleBorder(),
                                          ),
                                          child: IconButton(
                                              icon: Icon(
                                                MdiIcons.chevronDown,
                                                size: 20,
                                              ),
                                              onPressed: () {}),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                        Container(
                          width: MediaQuery.of(context).size.width * 0.28,
                          child: Padding(
                            padding: const EdgeInsets.fromLTRB(10, 10, 0, 0),
                            child: Row(
                              children: [
                                Text(
                                  'QTY: 1',
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 12,
                                  ),
                                ),
                                Material(
                                  color: Colors.transparent,
                                  child: Center(
                                    child: Ink(
                                      decoration: const ShapeDecoration(
                                        color: Colors.transparent,
                                        shape: CircleBorder(),
                                      ),
                                      child: IconButton(
                                          icon: Icon(
                                            MdiIcons.chevronDown,
                                            size: 20,
                                          ),
                                          onPressed: () {}),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class Page4 extends StatelessWidget {
  const Page4({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.white,
            title: Text(
              "SAVED ITEMS",
              style: TextStyle(color: Colors.black, fontSize: 18),
            ),
            centerTitle: true,
          ),
          body: Column(
            children: [
              Container(
                padding: EdgeInsets.all(15),
                width: MediaQuery.of(context).size.width * 0.98,
                child: Container(
                  color: Colors.white,
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.all(2.0),
                        child: ConstrainedBox(
                          constraints: BoxConstraints(
                            maxWidth: MediaQuery.of(context).size.width * 0.38,
                            maxHeight: MediaQuery.of(context).size.width * 0.38,
                          ),
                          child: Image.asset('assets/images/shirts.png',
                              fit: BoxFit.fill),
                        ),
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Container(
                            width: MediaQuery.of(context).size.width * 0.59,
                            child: Padding(
                              padding: const EdgeInsets.fromLTRB(10, 10, 0, 0),
                              child: Text(
                                '25.00€',
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 18,
                                ),
                              ),
                            ),
                          ),
                          Container(
                            width: MediaQuery.of(context).size.width * 0.59,
                            child: Padding(
                              padding: const EdgeInsets.fromLTRB(10, 10, 0, 0),
                              child: Text(
                                'BURTON Menswear long sleeve shirt in red & tan check',
                                style: TextStyle(
                                  fontSize: 14,
                                ),
                              ),
                            ),
                          ),
                          Row(
                            children: [
                              Container(
                                width: MediaQuery.of(context).size.width * 0.28,
                                child: Padding(
                                  padding:
                                      const EdgeInsets.fromLTRB(10, 10, 0, 0),
                                  child: Text(
                                    'CREAM',
                                    style: TextStyle(
                                      fontWeight: FontWeight.w300,
                                      fontSize: 14,
                                    ),
                                  ),
                                ),
                              ),
                              Container(
                                width: MediaQuery.of(context).size.width * 0.28,
                                child: Padding(
                                  padding:
                                      const EdgeInsets.fromLTRB(10, 10, 0, 0),
                                  child: Text(
                                    'M',
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 14,
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                          Container(
                            width: MediaQuery.of(context).size.width * 0.42,
                            child: Padding(
                              padding: const EdgeInsets.fromLTRB(10, 10, 0, 0),
                              child: SizedBox(
                                  width: double.infinity, //Full width
                                  height: 32,
                                  child: FlatButton(
                                    child: Text(
                                      'MOVE TO BAG',
                                      style: TextStyle(
                                          fontSize: 16,
                                          fontWeight: FontWeight.normal),
                                    ),
                                    onPressed: () {},
                                    shape: RoundedRectangleBorder(
                                        side: BorderSide(
                                            width: 2, color: Colors.green),
                                        borderRadius: BorderRadius.circular(0)),
                                  )),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              Container(
                padding: EdgeInsets.all(15),
                width: MediaQuery.of(context).size.width * 0.98,
                child: Container(
                  color: Colors.white,
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.all(2.0),
                        child: ConstrainedBox(
                          constraints: BoxConstraints(
                            maxWidth: MediaQuery.of(context).size.width * 0.38,
                            maxHeight: MediaQuery.of(context).size.width * 0.38,
                          ),
                          child: Image(
                            image: AssetImage('assets/images/suit.png'),
                            fit: BoxFit.fitHeight,
                          ),
                        ),
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Container(
                            width: MediaQuery.of(context).size.width * 0.59,
                            child: Padding(
                              padding: const EdgeInsets.fromLTRB(10, 10, 0, 0),
                              child: Text(
                                '55.00€',
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 18,
                                ),
                              ),
                            ),
                          ),
                          Container(
                            width: MediaQuery.of(context).size.width * 0.59,
                            child: Padding(
                              padding: const EdgeInsets.fromLTRB(10, 10, 0, 0),
                              child: Text(
                                'ASOS DESIGN skinny suit jacket in charcoal',
                                style: TextStyle(
                                  fontSize: 14,
                                ),
                              ),
                            ),
                          ),
                          Row(
                            children: [
                              Container(
                                width: MediaQuery.of(context).size.width * 0.28,
                                child: Padding(
                                  padding:
                                      const EdgeInsets.fromLTRB(10, 10, 0, 0),
                                  child: Text(
                                    'BLACK',
                                    style: TextStyle(
                                      fontWeight: FontWeight.w300,
                                      fontSize: 14,
                                    ),
                                  ),
                                ),
                              ),
                              Container(
                                width: MediaQuery.of(context).size.width * 0.28,
                                child: Padding(
                                  padding:
                                      const EdgeInsets.fromLTRB(10, 10, 0, 0),
                                  child: Text(
                                    'L',
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 14,
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                          Container(
                            width: MediaQuery.of(context).size.width * 0.42,
                            child: Padding(
                              padding: const EdgeInsets.fromLTRB(10, 10, 0, 0),
                              child: SizedBox(
                                  width: double.infinity, //Full width
                                  height: 32,
                                  child: FlatButton(
                                    child: Text(
                                      'MOVE TO BAG',
                                      style: TextStyle(
                                          fontSize: 16,
                                          fontWeight: FontWeight.normal),
                                    ),
                                    onPressed: () {},
                                    shape: RoundedRectangleBorder(
                                        side: BorderSide(
                                            width: 2, color: Colors.green),
                                        borderRadius: BorderRadius.circular(0)),
                                  )),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ],
          )),
    );
  }
}

class Page5 extends StatelessWidget {
  const Page5({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
            iconTheme: IconThemeData(
              color: Colors.black, //change your color here
            ),
            backgroundColor: Colors.white,
            title: Text(
              "MY ACCOUNT",
              style: TextStyle(color: Colors.black, fontSize: 18),
            ),
            centerTitle: true,
            actions: <Widget>[
              IconButton(
                  icon: Icon(MdiIcons.cogOutline),
                  onPressed: () {
                    Navigator.push(
                        context,
                        new MaterialPageRoute(
                            builder: (BuildContext context) =>
                                new ListViewPage()));
                  })
            ]),
        body: Container(
          padding: EdgeInsets.fromLTRB(15, 0, 15, 0),
          child: ListView(children: [
            SizedBox(height: 40),
            Center(
              child: Stack(
                children: [
                  Container(
                    width: 100,
                    height: 100,
                    decoration: BoxDecoration(
                      border: Border.all(
                        width: 2,
                        color: Theme.of(context).scaffoldBackgroundColor,
                      ),
                      shape: BoxShape.circle,
                      color: Colors.pink,
                    ),
                    child: Center(
                      child: Text(
                        "P",
                        style: TextStyle(fontSize: 50, color: Colors.white),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 20),
            Center(
              child: Text(
                "Hi,",
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.normal),
              ),
            ),
            Center(
              child: Text(
                "Pauek",
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.w700),
              ),
            ),
            SizedBox(height: 20),
            ListTile(
              title: Text(
                "My Orders",
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.w400),
              ),
              leading: Icon(MdiIcons.packageVariantClosed, size: 32),
              trailing: Icon(MdiIcons.chevronRight),
              onTap: () {},
            ),
            SizedBox(height: 8),
            ListTile(
              title: Text(
                "My Returns",
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.w400),
              ),
              leading: Icon(MdiIcons.packageVariant, size: 32),
              trailing: Icon(MdiIcons.chevronRight),
              onTap: () {},
            ),
            SizedBox(height: 8),
            ListTile(
              title: Text(
                "Premier Delivery",
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.w400),
              ),
              leading: Icon(MdiIcons.crownOutline, size: 32),
              trailing: Icon(MdiIcons.chevronRight),
              onTap: () {},
            ),
            SizedBox(height: 8),
            ListTile(
              title: Text(
                "My details",
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.w400),
              ),
              leading: Icon(MdiIcons.cardAccountDetailsOutline, size: 32),
              trailing: Icon(MdiIcons.chevronRight),
              onTap: () {},
            ),
            SizedBox(height: 8),
            ListTile(
              title: Text(
                "Change password",
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.w400),
              ),
              leading: Icon(MdiIcons.lockOutline, size: 32),
              trailing: Icon(MdiIcons.chevronRight),
              onTap: () {},
            ),
            SizedBox(height: 8),
            ListTile(
              title: Text(
                "Adress book",
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.w400),
              ),
              leading: Icon(MdiIcons.homeVariantOutline, size: 32),
              trailing: Icon(MdiIcons.chevronRight),
              onTap: () {},
            ),
            SizedBox(height: 8),
            ListTile(
              title: Text(
                "Payment methods",
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.w400),
              ),
              leading: Icon(MdiIcons.creditCardOutline, size: 32),
              trailing: Icon(MdiIcons.chevronRight),
              onTap: () {},
            ),
            SizedBox(height: 8),
            ListTile(
              title: Text(
                "Notifications",
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.w400),
              ),
              leading: Icon(MdiIcons.bellOutline, size: 32),
              trailing: Icon(MdiIcons.chevronRight),
              onTap: () {},
            ),
          ]),
        ),
      ),
    );
  }
}

class ListViewPage extends StatelessWidget {
  const ListViewPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        appBar: new AppBar(
          iconTheme: IconThemeData(
            color: Colors.black, //change your color here
          ),
          backgroundColor: Colors.white,
          title: Text(
            "HOODIES",
            style: TextStyle(color: Colors.black, fontSize: 18),
          ),
          centerTitle: true,
        ),
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

class ListViewPage2 extends StatelessWidget {
  const ListViewPage2({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        iconTheme: IconThemeData(
          color: Colors.black, //change your color here
        ),
        backgroundColor: Colors.white,
        title: Text(
          "HOODIES",
          style: TextStyle(color: Colors.black, fontSize: 18),
        ),
        centerTitle: true,
      ),
      body: StreamBuilder(
          stream: FirebaseFirestore.instance.collection('clothes').snapshots(),
          builder: (context, AsyncSnapshot<QuerySnapshot> snapshot) {
            if (!snapshot.hasData) {
              return Center(
                child: CircularProgressIndicator(),
              );
            }
            List<DocumentSnapshot> docs = snapshot.data.docs;

            SizedBox(height: 20);
            return ListView.builder(
                itemCount: docs.length,
                itemBuilder: (context, index) {
                  //Map<String, dynamic> data = docs[index].data();

                  if (docs[index].data().isNotEmpty && index < docs.length/2) {
                    if (index > 0) {
                      index = index * 2;
                    }

                    return Expanded(
                        child: Padding(
                      padding: const EdgeInsets.fromLTRB(20, 20, 20, 0),
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
                                      Container(
                                        child: new Text(docs[index].data()['name'])),
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
                                      new Text(docs[index + 1].data()['name'])
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ],
                      )),
                    ));
                  }
                });
          }),
    );
  }
}
