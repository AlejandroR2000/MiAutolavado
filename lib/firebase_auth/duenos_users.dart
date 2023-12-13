import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:miautolavado/paginas/pagina_principal.dart';

class UserManagement {
  storeNewUser(nombre, apellido, telefono,user, context) async {
    var firebaseUser = await FirebaseAuth.instance.currentUser!;
    FirebaseFirestore.instance
        .collection('dueños')
        .doc(firebaseUser.uid)
        .set({'nombre': nombre,'apellido': apellido,'telefono': telefono,'email': user.email, 'uid': user.uid})
        .then((value) => Navigator.push(
        context, MaterialPageRoute(builder: (context) => PaginaPrincipal())))
        .catchError((e) {
      print(e);
    });
  }
}