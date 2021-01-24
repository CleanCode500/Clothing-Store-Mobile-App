import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

import '../../user.dart';

class EmailAndPassword {
  String email, password, name, surname;
  EmailAndPassword(this.name, this.surname, this.email, this.password);
}

class SignUpScreen extends StatefulWidget {
  @override
  _SignUpScreenState createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  TextEditingController _email, _password, _name, _surname;

  @override
  void initState() {
    _name = TextEditingController();
    _surname = TextEditingController();
    _email = TextEditingController();
    _password = TextEditingController();
    super.initState();
  }

  @override
  void dispose() {
    _name.dispose();
    _surname.dispose();
    _email.dispose();
    _password.dispose();
    super.dispose();
  }

  final user = FirebaseFirestore.instance.collection('users');

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Padding(
            padding: EdgeInsets.all(32),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                SizedBox(height: 40),
                Text(
                  'Sign Up',
                  style: TextStyle(
                    fontSize: 24,
                    color: Theme.of(context).primaryColor,
                  ),
                ),
                SizedBox(height: 30),
                TextField(
                  controller: _email,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(3)),
                    ),
                    labelText: 'Email',
                  ),
                  keyboardType: TextInputType.emailAddress,
                ),
                SizedBox(height: 12),
                TextField(
                  controller: _password,
                  obscureText: true,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(3)),
                    ),
                    labelText: 'Password',
                  ),
                ),
                SizedBox(height: 12),
                TextField(
                  controller: _name,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(3)),
                    ),
                    labelText: 'Full Name',
                  ),
                  keyboardType: TextInputType.name,
                ),
                SizedBox(height: 12),
                TextField(
                  controller: _surname,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(3)),
                    ),
                    labelText: 'Second Name',
                  ),
                  keyboardType: TextInputType.name,
                ),
                SizedBox(height: 20),
                FlatButton(
                  color: Theme.of(context).primaryColor,
                  child: Text(
                    'Register',
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                  onPressed: () {
                    Navigator.of(context).pop(
                      EmailAndPassword(
                        _name.text,
                        _surname.text,
                        _email.text,
                        _password.text,
                      ),
                    );
                    user.doc(_email.text.toLowerCase()).set(
                        ShoppingUser(_name.text, _surname.text, _email.text)
                            .toFirestore());
                  },
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
