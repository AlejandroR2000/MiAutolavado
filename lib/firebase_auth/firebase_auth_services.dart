import 'package:firebase_auth/firebase_auth.dart';
import 'package:miautolavado/widgets/mensajes.dart';


class FirebaseAuthService {

  FirebaseAuth _auth = FirebaseAuth.instance;

  Future<User?> signUpWithEmailAndPassword(String email, String password) async {

    try {
      UserCredential credential =await _auth.createUserWithEmailAndPassword(email: email, password: password);
      return credential.user;
    } on FirebaseAuthException catch (e) {

      if (e.code == 'email-already-in-use') {
        mensajeError(message: 'La dirección de correo electrónico ya está en uso.');
      } else {
        mensajeError(message: 'Ocurrió un error: ${e.code}');
      }
    }
    return null;

  }

  Future<User?> signInWithEmailAndPassword(String email, String password) async {

    try {
      UserCredential credential =await _auth.signInWithEmailAndPassword(email: email, password: password);
      return credential.user;
    } on FirebaseAuthException catch (e) {
      if (e.code == 'invalid-credential' || e.code == 'wrong-password') {
       mensajeError(message: 'Correo electrónico o contraseña incorrecta.');
      } else if(e.code == 'invalid-email'){
        mensajeError(message: 'El formato de correo es invalido.');
      }else {
        mensajeError(message: 'Ocurrió un error: ${e.code}');
      }

    }
    return null;

  }




}