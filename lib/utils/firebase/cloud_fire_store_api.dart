

import 'package:ak_store_app/user/model/user.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class CloudFireStoreAPI  {
  final String COLLECTION_PRODUCTOS = "productos";
  final Firestore _firestore = Firestore.instance;

  void updateUserData(User user) async {
    DocumentReference document = _firestore.collection(COLLECTION_PRODUCTOS).document(user.uid);
    return document.setData({
      'uid': user.uid,
      'name': user.name,
      'email': user.email,
      'photoURL': user.photoURL
    });
  }
}