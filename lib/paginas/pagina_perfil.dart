import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../widgets/mensajes.dart';

class PaginaPerfil extends StatefulWidget {
  const PaginaPerfil({super.key});

  @override
  State<PaginaPerfil> createState() => _PaginaPerfilState();
}

class _PaginaPerfilState extends State<PaginaPerfil> {
  TextEditingController nombre = TextEditingController(text: "");
  TextEditingController apellido = TextEditingController(text: "");
  TextEditingController telefono = TextEditingController(text: "");
  TextEditingController correo = TextEditingController(text: "");

  void initState() {
    // TODO: implement initState
    super.initState();
    getModules();
  }

  Widget _buildNombre() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        const Text(
          'Nombre',
          style: TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.bold,
            fontFamily: 'Inter',
            fontSize: 16,
          ),
        ),
        const SizedBox(height: 1.0),
        Container(
          alignment: Alignment.centerLeft,
          decoration: BoxDecoration(
            color: const Color(0xFFD9D9D9),
            borderRadius: BorderRadius.circular(10.0),
            boxShadow: const [
              BoxShadow(
                color: Colors.black,
                blurRadius: 6.0,
                offset: Offset(0, 2),
              ),
            ],
          ),
          height: 45.0,
          child: TextField(
            controller: nombre,
            keyboardType: TextInputType.name,
            style: TextStyle(
              color: Colors.black,
              fontFamily: 'OpenSans',
            ),
            decoration: InputDecoration(
              border: InputBorder.none,
              contentPadding: EdgeInsets.only(top: 7.0),
              prefixIcon: Icon(
                Icons.account_box,
                color: Colors.white,
              ),
              hintText: 'Introduce tu nombre',
              hintStyle: TextStyle(
                color: Colors.black,
                fontFamily: 'OpenSans',
              ),
            ),
          ),
        ),
      ],
    );
  }

  Widget _buildApellido() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        const Text(
          'Apellido',
          style: TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.bold,
            fontFamily: 'Inter',
            fontSize: 16,
          ),
        ),
        const SizedBox(height: 1.0),
        Container(
          alignment: Alignment.centerLeft,
          decoration: BoxDecoration(
            color: const Color(0xFFD9D9D9),
            borderRadius: BorderRadius.circular(10.0),
            boxShadow: const [
              BoxShadow(
                color: Colors.black,
                blurRadius: 6.0,
                offset: Offset(0, 2),
              ),
            ],
          ),
          height: 45.0,
          child: TextField(
            controller: apellido,
            keyboardType: TextInputType.name,
            style: TextStyle(
              color: Colors.black,
              fontFamily: 'OpenSans',
            ),
            decoration: InputDecoration(
              border: InputBorder.none,
              contentPadding: EdgeInsets.only(top: 7.0),
              prefixIcon: Icon(
                Icons.account_box,
                color: Colors.white,
              ),
              hintText: 'Introduce tu apellido',
              hintStyle: TextStyle(
                color: Colors.black,
                fontFamily: 'OpenSans',
              ),
            ),
          ),
        ),
      ],
    );
  }

  Widget _buildCorreo() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        const Text(
          'Correo',
          style: TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.bold,
            fontFamily: 'Inter',
            fontSize: 16,
          ),
        ),
        const SizedBox(height: 1.0),
        Container(
          alignment: Alignment.centerLeft,
          decoration: BoxDecoration(
            color: const Color(0xFFD9D9D9),
            borderRadius: BorderRadius.circular(10.0),
            boxShadow: const [
              BoxShadow(
                color: Colors.black,
                blurRadius: 6.0,
                offset: Offset(0, 2),
              ),
            ],
          ),
          height: 45.0,
          child: TextField(
            readOnly: true,
            controller: correo,
            keyboardType: TextInputType.emailAddress,
            style: TextStyle(
              color: Colors.black,
              fontFamily: 'OpenSans',
            ),
            decoration: InputDecoration(
              border: InputBorder.none,
              contentPadding: EdgeInsets.only(top: 7.0),
              prefixIcon: Icon(
                Icons.email,
                color: Colors.white,
              ),
              hintText: 'Introduce tu correo electronico',
              hintStyle: TextStyle(
                color: Colors.black,
                fontFamily: 'OpenSans',
              ),
            ),
          ),
        ),
      ],
    );
  }

  Widget _buildTelefono() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        const Text(
          'Telefono',
          style: TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.bold,
            fontFamily: 'Inter',
            fontSize: 16,
          ),
        ),
        const SizedBox(height: 1.0),
        Container(
          alignment: Alignment.centerLeft,
          decoration: BoxDecoration(
            color: const Color(0xFFD9D9D9),
            borderRadius: BorderRadius.circular(10.0),
            boxShadow: const [
              BoxShadow(
                color: Colors.black,
                blurRadius: 6.0,
                offset: Offset(0, 2),
              ),
            ],
          ),
          height: 45.0,
          child: TextField(
            controller: telefono,
            keyboardType: TextInputType.phone,
            style: TextStyle(
              color: Colors.black,
              fontFamily: 'OpenSans',
            ),
            decoration: InputDecoration(
              border: InputBorder.none,
              contentPadding: EdgeInsets.only(top: 7.0),
              prefixIcon: Icon(
                Icons.phone,
                color: Colors.white,
              ),
              hintText: 'Introduce tu telefono',
              hintStyle: TextStyle(
                color: Colors.black,
                fontFamily: 'OpenSans',
              ),
            ),
          ),
        ),
      ],
    );
  }

  Widget _buildContrasena() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        const Text(
          'Contraseña',
          style: TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.bold,
            fontFamily: 'Inter',
            fontSize: 16,
          ),
        ),
        const SizedBox(height: 1.0),
        Container(
          alignment: Alignment.centerLeft,
          decoration: BoxDecoration(
            color: const Color(0xFFD9D9D9),
            borderRadius: BorderRadius.circular(10.0),
            boxShadow: const [
              BoxShadow(
                color: Colors.black,
                blurRadius: 6.0,
                offset: Offset(0, 2),
              ),
            ],
          ),
          height: 45.0,
          child: const TextField(
            keyboardType: TextInputType.emailAddress,
            readOnly: false,
            obscureText: true,
            style: TextStyle(
              color: Colors.black,
              fontFamily: 'OpenSans',
            ),
            decoration: InputDecoration(
              border: InputBorder.none,
              contentPadding: EdgeInsets.only(top: 7.0),
              prefixIcon: Icon(
                Icons.lock,
                color: Colors.white,
              ),
              hintText: 'Introduce tu contraseña',
              hintStyle: TextStyle(
                color: Colors.black,
                fontFamily: 'OpenSans',
              ),
            ),
          ),
        ),
      ],
    );
  }

  Widget _buildBtnguardar() {
    return Container(
      padding: const EdgeInsets.all(8.0),
      width: 257,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
            backgroundColor: const Color(0xFFF8AF42),
            //background color of button
            side: const BorderSide(width: 1, color: Colors.black),
            //border width and color
            elevation: 3,
            //elevation of button
            shape: RoundedRectangleBorder(
                //to set border radius to button
                borderRadius: BorderRadius.circular(10)),
            padding: const EdgeInsets.all(10) //content padding inside button
            ),
        onPressed: () => {

        FirebaseFirestore.instance
            .collection('dueños')
            .doc(FirebaseAuth.instance.currentUser!.uid)
            .update({'nombre': nombre.text,'apellido': apellido.text,'telefono': telefono.text,})
            .then((value) => Navigator.of(context).pushNamedAndRemoveUntil('PaginaPrincipal', (Route<dynamic> route) => false),)
            .catchError((e) {
        print(e);
        }),
        },
        child: const Text(
          'Guardar datos',
          style: TextStyle(
            color: Color(0xFF312D2D),
            letterSpacing: 1.5,
            fontSize: 18.0,
            fontWeight: FontWeight.bold,
            fontFamily: 'OpenSans',
          ),
        ),
      ),
    );
  }

  Widget _buildBtnCerrarSesion() {
    return Container(
      padding: const EdgeInsets.all(8.0),
      width: 257,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
            backgroundColor: const Color(0xFFCF2E0B),
            //background color of button
            side: const BorderSide(width: 1, color: Colors.black),
            //border width and color
            elevation: 3,
            //elevation of button
            shape: RoundedRectangleBorder(
                //to set border radius to button
                borderRadius: BorderRadius.circular(10)),
            padding: const EdgeInsets.all(10) //content padding inside button
            ),
        onPressed: () => {
          FirebaseAuth.instance.signOut(),
          //Navigator.pushNamed(context, "Home"),
          //Navigator.pushAndRemoveUntil<void>(context, MaterialPageRoute<void>(builder: (BuildContext context) => const PaginaLogin()), ModalRoute.withName('/'),),
          Navigator.of(context).pushNamedAndRemoveUntil(
              'Login', (Route<dynamic> route) => false),
          mensajeCorrecto(message: "Cerraste sesion correctamente"),
        },
        child: const Text(
          'Cerrar sesion',
          style: TextStyle(
            color: Color(0xFFFFFFFF),
            letterSpacing: 1.5,
            fontSize: 18.0,
            fontWeight: FontWeight.bold,
            fontFamily: 'OpenSans',
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const BackButton(
          color: Color(0xFF109ADA),
        ),
        backgroundColor: const Color(0xFFEEEEEE),
        centerTitle: true,
        title: const Text(
          "Perfil",
          style: TextStyle(
            color: Colors.black,
            fontFamily: 'OpenSans',
            fontSize: 20.0,
            fontWeight: FontWeight.bold,
          ),
        ),
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
                      CircleAvatar(
                        backgroundColor: const Color(0xFF109ADA),
                        radius: 90.0,
                        backgroundImage: ExactAssetImage(
                          'imagenes/Avatar.png',
                        ),
                      ),
                      Divider(),
                      const SizedBox(height: 9.0),
                      _buildNombre(),
                      const SizedBox(
                        height: 9.0,
                      ),
                      _buildApellido(),
                      const SizedBox(
                        height: 9.0,
                      ),
                      _buildTelefono(),
                      const SizedBox(
                        height: 9.0,
                      ),
                      _buildCorreo(),
                      const SizedBox(
                        height: 9.0,
                      ),
                      //_buildContrasena(),
                      const SizedBox(
                        height: 20.0,
                      ),
                      _buildBtnguardar(),
                      const SizedBox(
                        height: 1.0,
                      ),
                      _buildBtnCerrarSesion(),
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

  getModules() async {
    {
      final firebaseUser = await FirebaseAuth.instance.currentUser!;
      if (firebaseUser != null)
        await FirebaseFirestore.instance
            .collection('dueños')
            .doc(firebaseUser.uid)
            .get()
            .then((ds) {
          nombre.text = ds.data()!['nombre'];
          apellido.text = ds.data()!['apellido'];
          telefono.text = ds.data()!['telefono'];
          correo.text = ds.data()!['email'];
        }).catchError((e) {
          print(e);
        });

      /// now _module1Controller.text contains the text from database....
    }
  }
}
