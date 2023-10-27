import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:miautolavado/paginas/pagina_perfil.dart';

class PaginaResumen extends StatefulWidget {
  const PaginaResumen({super.key});

  @override
  State<PaginaResumen> createState() => _PaginaResumenState();
}

class _PaginaResumenState extends State<PaginaResumen> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: const Color(0xFFEEEEEE),
        centerTitle: true,
        title: const Text("Resumen",
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
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => const PaginaPerfil())
              );
            },
          )
        ],
      ),
      body: AnnotatedRegion<SystemUiOverlayStyle>(
        value: SystemUiOverlayStyle.light,
        child: GestureDetector(
          onTap: () => FocusScope.of(context).unfocus(),
          child: Stack(
            children: <Widget>[
              Container(
                height: double.infinity,
                child: SingleChildScrollView(
                  physics: const AlwaysScrollableScrollPhysics(),
                  padding: const EdgeInsets.symmetric(
                    horizontal: 40.0,
                    vertical: 10.0,
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SizedBox(
                        height: 90,
                        width: 90,
                        child: Image.asset('imagenes/registro.png'),

                      ),
                      Divider(
                        height: 100,
                        color: Colors.green,
                        thickness: 1,
                        indent : 10,
                        endIndent : 10,
                      ),
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),


    );
  }
}
