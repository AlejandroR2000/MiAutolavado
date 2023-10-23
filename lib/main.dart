import 'package:flutter/material.dart';
import 'package:miautolavado/paginas/pagina_login.dart';
import 'package:miautolavado/paginas/pagina_recuperarContra.dart';
import 'package:miautolavado/paginas/pagina_registro.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key}); //

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'MiAutoLavado',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      initialRoute: 'Home',
      routes: <String, WidgetBuilder>{
        'Home': (BuildContext context) => PaginaLogin(),
        'Registro': (BuildContext context) => PaginaRegistro(),
        'RecuperarContraseña': (BuildContext context) => PaginaRecuperarContra(),
      },
    );
  }
}
