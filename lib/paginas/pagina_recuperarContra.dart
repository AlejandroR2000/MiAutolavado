import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class PaginaRecuperarContra extends StatefulWidget {
  const PaginaRecuperarContra({super.key});

  @override
  State<PaginaRecuperarContra> createState() => _PaginaRecuperarContraState();
}

class _PaginaRecuperarContraState extends State<PaginaRecuperarContra> {

  Widget _buildCorreo() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        const Text(
          'Ingresa tu correo electronico para recuperar tu contraseña',
          textAlign: TextAlign.center,
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.normal,
            fontFamily: 'Inter',
            fontSize: 16,
          ),
        ),

        const SizedBox(height: 30),
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

  Widget _buildBtnRecuperar() {
    return Container(
      padding: const EdgeInsets.all(8.0),
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
            backgroundColor: const Color(0xFF00FFC2),
            //background color of button
            side: const BorderSide(width: 1, color: Colors.black),
            //border width and color
            elevation: 3,
            //elevation of button
            shape: RoundedRectangleBorder(
              //to set border radius to button
                borderRadius: BorderRadius.circular(10)),
            padding: const EdgeInsets.all(12) //content padding inside button
        ),
        onPressed: () => print('Login Button Pressed'),
        child: const Text(
          'Restablecer contraseña',
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


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const BackButton(color: Colors.white,),
        backgroundColor: const Color(0xFF109ADA),
        centerTitle: true,
        title: const Text("¿CONTRASEÑA OLVIDADA?",
          style: TextStyle(
            color: Colors.white,
            fontFamily: 'OpenSans',
            fontSize: 20.0,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      backgroundColor: const Color(0xFF109ADA),
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
                        height: 220,
                        width: 212,
                        child: Image.asset('imagenes/recuperacontra.png'),
                      ),
                      const SizedBox(height: 25.0),
                      _buildCorreo(),
                      const SizedBox(height: 50.0,),
                      _buildBtnRecuperar()
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
