import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

class Basket extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          title: Text(
            'BAG',
            style: TextStyle(color: Colors.black, fontSize: 18),
          ),
          centerTitle: true,
          actions: <Widget>[
            Container(
              width: MediaQuery.of(context).size.width * 0.36,
              child: Padding(
                padding: const EdgeInsets.fromLTRB(10, 10, 10, 10),
                child: SizedBox(
                    width: double.infinity, //Full width
                    height: 22,
                    child: FlatButton(
                      child: Text(
                        'CHECKOUT',
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      ),
                      onPressed: () {},
                      color: Colors.green,
                      shape: RoundedRectangleBorder(
                          side: BorderSide(width: 2, color: Colors.transparent),
                          borderRadius: BorderRadius.circular(0)),
                    )),
              ),
            ),
          ],
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
        ));
  }
}
