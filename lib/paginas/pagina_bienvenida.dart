import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:miautolavado/paginas/pagina_login.dart';
import 'package:miautolavado/paginas/pagina_principal.dart';

class PaginaBienvenida extends StatefulWidget {
  const PaginaBienvenida({Key? key});

  @override
  State<PaginaBienvenida> createState() => _PaginaBienvenida();
}

class _PaginaBienvenida extends State<PaginaBienvenida> {
  @override
  void initState() {
    super.initState();
    _navigateToHome();
  }


  _navigateToHome() async {
    await Future.delayed(Duration(milliseconds: 2500), () {});
    FirebaseAuth.instance.authStateChanges().listen((User? user) {
      if (user == null) {
        //print('User is currently signed out!');
        Navigator.pushReplacement(
            context,
            MaterialPageRoute(
                builder: (BuildContext context) => PaginaLogin()));
      } else {
        //print('User is signed in!');
        Navigator.pushReplacement(
            context,
            MaterialPageRoute(
                builder: (BuildContext context) => PaginaPrincipal()));
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF109ADA),
      body: AnnotatedRegion<SystemUiOverlayStyle>(
        value: SystemUiOverlayStyle.light,
        child: GestureDetector(
          onTap: () => FocusScope.of(context).unfocus(),
          child: Stack(
            children: <Widget>[
              Container(
                height: double.infinity,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SizedBox(
                        height: 200,
                        width: 400,
                        child: Image.asset('imagenes/lavado.gif'),
                      ),
                      const Text(
                        'Mi AutoLavado',
                        style: TextStyle(
                          color: Colors.white,
                          fontFamily: 'OpenSans',
                          fontSize: 20.0,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ),
            ],
          ),
        ),
      ),
    );
  }
}