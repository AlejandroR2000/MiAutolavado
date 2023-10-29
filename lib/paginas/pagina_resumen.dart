import 'package:flutter/material.dart';
import 'package:flutter/services.dart';


class PaginaResumen extends StatefulWidget {
  const PaginaResumen({super.key});

  @override
  State<PaginaResumen> createState() => _PaginaResumenState();
}

class _PaginaResumenState extends State<PaginaResumen> {
  Widget _buildAutosyEmpleados() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Container(
          padding: EdgeInsets.all(8.0),
          height: 80,
          width: 180,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            border: Border.all(color: Colors.black, width: 1.5),
            color: Color(0xFF00C2FF),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    '0',
                    style: TextStyle(
                      fontSize: 20,
                      color: Colors.white,
                    ),
                  ),
                  Container(
                    width: 30,
                    height: 30,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Colors.white24,
                    ),
                    child: Icon(
                      Icons.directions_car_filled_rounded,
                      color: Colors.white,
                      size: 18,
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                'Autos lavados',
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
            ],
          ),
        ),
        Container(
          padding: EdgeInsets.all(8.0),
          height: 80,
          width: 180,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            border: Border.all(color: Colors.black, width: 1.5),
            color: Color(0xFFD8A905),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    '0',
                    style: TextStyle(
                      fontSize: 20,
                      color: Colors.white,
                    ),
                  ),
                  Container(
                    width: 30,
                    height: 30,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Colors.white24,
                    ),
                    child: Icon(
                      Icons.groups,
                      color: Colors.white,
                      size: 18,
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                'Empleados activos',
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }

  Widget _buildVentasyEgresos() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Container(
          padding: EdgeInsets.all(8.0),
          height: 80,
          width: 180,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            border: Border.all(color: Colors.black, width: 1.5),
            color: Color(0xFF0CB04E),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    '0',
                    style: TextStyle(
                      fontSize: 20,
                      color: Colors.white,
                    ),
                  ),
                  Container(
                    width: 30,
                    height: 30,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Colors.white24,
                    ),
                    child: Icon(
                      Icons.money_rounded,
                      color: Colors.white,
                      size: 18,
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                'Ventas',
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
            ],
          ),
        ),
        Container(
          padding: EdgeInsets.all(8.0),
          height: 80,
          width: 180,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            border: Border.all(color: Colors.black, width: 1.5),
            color: Color(0xFF960F0F),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    '0',
                    style: TextStyle(
                      fontSize: 20,
                      color: Colors.white,
                    ),
                  ),
                  Container(
                    width: 30,
                    height: 30,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Colors.white24,
                    ),
                    child: Icon(
                      Icons.transit_enterexit_rounded,
                      color: Colors.white,
                      size: 18,
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                'Egresos',
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
  Widget _buildVentasNetas (){

    return Container(
      padding: EdgeInsets.all(8.0),
      height: 80,
      width: 300,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        border: Border.all(color: Colors.black, width: 1.5),
        color: Color(0xFF0B9F19),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                '0',
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.white,
                ),
              ),
              Container(
                width: 30,
                height: 30,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Colors.white24,
                ),
                child: Icon(
                  Icons.attach_money_rounded,
                  color: Colors.white,
                  size: 18,
                ),
              ),
            ],
          ),
          SizedBox(
            height: 10,
          ),
          Text(
            'Ventas netas',
            style: TextStyle(
              color: Colors.white,
            ),
          ),
        ],
      ),
    );

  }



  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
                    horizontal: 10.0,
                    vertical: 20.0,
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text(
                        'Hora de apertura de caja: -',
                        style: TextStyle(
                          color: Colors.black,
                          fontFamily: 'OpenSans',
                          fontSize: 20.0,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const SizedBox(height: 20.0,),
                      _buildAutosyEmpleados(),
                      const SizedBox(height: 20.0,),
                      _buildVentasyEgresos(),
                      const SizedBox(height: 20.0,),
                      const Text(
                        'Ventas - Egresos = Ventas netas',
                        style: TextStyle(
                          color: Colors.black,
                          fontFamily: 'OpenSans',
                          fontSize: 10.0,
                          fontWeight: FontWeight.normal,
                        ),
                      ),
                      _buildVentasNetas()
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
