import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

class MyAccount extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
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
      body: Container(
        padding: EdgeInsets.all(20),
        child: ListView(children: [
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
            trailing: Icon(MdiIcons.arrowRight),
            onTap: () {},
          ),
          SizedBox(height: 5),
          ListTile(
            title: Text(
              "My Returns",
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.w400),
            ),
            leading: Icon(MdiIcons.packageVariant, size: 32),
            trailing: Icon(MdiIcons.arrowRight),
            onTap: () {},
          ),
          SizedBox(height: 5),
          ListTile(
            title: Text(
              "My details",
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.w400),
            ),
            leading: Icon(MdiIcons.cardAccountDetailsOutline, size: 32),
            trailing: Icon(MdiIcons.arrowRight),
            onTap: () {},
          ),
          SizedBox(height: 5),
          ListTile(
            title: Text(
              "Change password",
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.w400),
            ),
            leading: Icon(MdiIcons.lockOutline, size: 32),
            trailing: Icon(MdiIcons.arrowRight),
            onTap: () {},
          ),
          SizedBox(height: 5),
          ListTile(
            title: Text(
              "Adress book",
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.w400),
            ),
            leading: Icon(MdiIcons.homeVariantOutline, size: 32),
            trailing: Icon(MdiIcons.arrowRight),
            onTap: () {},
          ),
          SizedBox(height: 5),
          ListTile(
            title: Text(
              "Payment methods",
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.w400),
            ),
            leading: Icon(MdiIcons.creditCardOutline, size: 32),
            trailing: Icon(MdiIcons.arrowRight),
            onTap: () {},
          ),
        ]),
      ),
    );
  }
}
