import 'package:cloud_firestore/cloud_firestore.dart';

class ShoppingUser {
  String name;
  String surname;
  String email;

  ShoppingUser(this.name, this.surname, this.email);

  ShoppingUser.fromFirestore(QueryDocumentSnapshot doc) {
    this.name = doc['name'];
    this.surname = doc['surname'];
    this.email = doc['email'];
  }

  Map<String, dynamic> toFirestore() => {
        'name': name,
        'surname': surname,
        'email': email,
      };
}