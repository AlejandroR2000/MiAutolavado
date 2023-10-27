import 'package:flutter/material.dart';

class PaginaCaja extends StatefulWidget {
  const PaginaCaja({super.key});

  @override
  State<PaginaCaja> createState() => _PaginaCajaState();
}

class _PaginaCajaState extends State<PaginaCaja> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: const Color(0xFFEEEEEE),
        centerTitle: true,
        title: const Text("Caja",
          style: TextStyle(
            color: Colors.black,
            fontFamily: 'OpenSans',
            fontSize: 20.0,
            fontWeight: FontWeight.bold,
          ),
        ),
        actions: <Widget>[
          IconButton(
            icon: Image.asset(
              "imagenes/iconoperfil.png",
              color: Color(0xFF109ADA),
              height: 25,
              width: 25,
            ),
            onPressed: () {
              // do something
            },
          )
        ],
      ),

    );
  }
}
