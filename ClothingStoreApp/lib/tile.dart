import 'package:flutter/material.dart';

class ListTileScreen extends StatelessWidget {
  String title;
  Widget trailingImage;
  VoidCallback onTab;
  Color color;

  ListTileScreen({this.title, this.color, this.onTab, this.trailingImage});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(0),
      child: GestureDetector(
          onTap: onTab,
          child: Container(
            padding: EdgeInsets.only(left: 20),
            height: 100.0,
            decoration: BoxDecoration(color: color),
            child: new Stack(
              children: <Widget>[
                Align(
                    child: Text(title, style: TextStyle(fontSize: 18),),
                    alignment: Alignment.centerLeft,
                  ),
                Align(
                  child: trailingImage,
                  alignment: Alignment.centerRight,
                ),
              ],
            ),
          ),
      ),
    );
  }
}
