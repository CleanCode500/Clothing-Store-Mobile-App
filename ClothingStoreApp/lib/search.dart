import 'package:clothing_store_app/tile.dart';
import 'package:flutter/material.dart';

class Search extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text(
          'SEARCH',
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
    );
  }
}
