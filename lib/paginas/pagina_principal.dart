import 'package:flutter/material.dart';
import 'package:miautolavado/paginas/pagina_agregarnegocio.dart';
import 'package:miautolavado/paginas/pagina_caja.dart';
import 'package:miautolavado/paginas/pagina_empleados.dart';
import 'package:miautolavado/paginas/pagina_historial.dart';
import 'package:miautolavado/paginas/pagina_perfil.dart';
import 'package:miautolavado/paginas/pagina_resumen.dart';

class PaginaPrincipal extends StatefulWidget {
  const PaginaPrincipal({super.key});

  @override
  State<PaginaPrincipal> createState() => _PaginaPrincipalState();
}

class _PaginaPrincipalState extends State<PaginaPrincipal> {
  int currentTab = 0;
  final List<Widget> screens = [
    const PaginaResumen(),
    const PaginaHistorial(),
    const PaginaEmpleados(),
    const PaginaCaja(),
  ];
  String _titulo = "Resumen";
  final PageStorageBucket bucket = PageStorageBucket();
  Widget currentScreen = const PaginaResumen();

  String? valueChoose;
  List listItem = ["Negocio 1", "Negocio 2", "Negocio 3"];

  PreferredSizeWidget buildAppBarBottom() {
    return PreferredSize(
      preferredSize:
          const Size.fromHeight(40), // change height depending on the child height
      child: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            // Text("Selecciona un negocio"),
            DropdownButton(
              alignment: Alignment.center,
              hint: const Text("Selecciona un negocio"),
              value: valueChoose,
              onChanged: (newValue) {
                setState(() {
                  valueChoose = newValue as String;
                });
              },
              items: listItem.map((valueItem) {
                return DropdownMenuItem(
                  value: valueItem,
                  child: Text(valueItem),
                );
              }).toList(),
            ),
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 70,
        automaticallyImplyLeading: false,
        backgroundColor: const Color(0xFFEEEEEE),
        centerTitle: true,
        title: RichText(
          textAlign: TextAlign.center,
          text: TextSpan(
            text: _titulo,
            style: const TextStyle(
              color: Colors.black,
              fontFamily: 'OpenSans',
              fontSize: 20.0,
              fontWeight: FontWeight.bold,
            ),
            /*
            children: <TextSpan>[
                TextSpan(
                  text: '\n' + _negocio,
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.normal,
                  ),
                ),
              ]*/
          ),
        ),
        bottom: buildAppBarBottom(),
        leading: IconButton(
          iconSize: 30,
          color: const Color(0xFF109ADA),
          onPressed: (){
            Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => const PaginaAgregarNegocio()));
          },
          icon: const Icon(Icons.add_business_rounded),
        ),
        actions: <Widget>[
          IconButton(
            iconSize: 30,
            color: const Color(0xFF109ADA),
            onPressed: (){
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const PaginaPerfil()));
            },
            icon: const Icon(Icons.manage_accounts_rounded),
          )
        ],
      ),
      body: PageStorage(
        bucket: bucket,
        child: currentScreen,
      ),
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.settings),
        onPressed: () {},
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: BottomAppBar(
        shape: const CircularNotchedRectangle(),
        notchMargin: 10,
        child: Container(
          height: 60,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  MaterialButton(
                    minWidth: 40,
                    onPressed: () {
                      setState(() {
                        currentScreen =
                            const PaginaResumen(); // if user taps on this dashboard tab will be active
                        currentTab = 0;
                        _titulo = "Resumen";
                      });
                    },
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Icon(
                          Icons.dashboard,
                          color: currentTab == 0 ? Colors.blue : Colors.grey,
                        ),
                        Text(
                          'Resumen',
                          style: TextStyle(
                            color: currentTab == 0 ? Colors.blue : Colors.grey,
                          ),
                        ),
                      ],
                    ),
                  ),
                  MaterialButton(
                    minWidth: 40,
                    onPressed: () {
                      setState(() {
                        currentScreen =
                            const PaginaHistorial(); // if user taps on this dashboard tab will be active
                        currentTab = 1;
                        _titulo = "Historial";
                      });
                    },
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Icon(
                          Icons.list_alt_rounded,
                          color: currentTab == 1 ? Colors.blue : Colors.grey,
                        ),
                        Text(
                          'Historial',
                          style: TextStyle(
                            color: currentTab == 1 ? Colors.blue : Colors.grey,
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              ),

              // Right Tab bar icons

              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  MaterialButton(
                    minWidth: 40,
                    onPressed: () {
                      setState(() {
                        currentScreen =
                            const PaginaEmpleados(); // if user taps on this dashboard tab will be active
                        currentTab = 2;
                        _titulo = "Empleados";
                      });
                    },
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Icon(
                          Icons.groups,
                          color: currentTab == 2 ? Colors.blue : Colors.grey,
                        ),
                        Text(
                          'Empleados',
                          style: TextStyle(
                            color: currentTab == 2 ? Colors.blue : Colors.grey,
                          ),
                        ),
                      ],
                    ),
                  ),
                  MaterialButton(
                    minWidth: 40,
                    onPressed: () {
                      setState(() {
                        currentScreen =
                            const PaginaCaja(); // if user taps on this dashboard tab will be active
                        currentTab = 3;
                        _titulo = "Caja";
                      });
                    },
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Icon(
                          Icons.shopping_bag_rounded,
                          color: currentTab == 3 ? Colors.blue : Colors.grey,
                        ),
                        Text(
                          'Caja',
                          style: TextStyle(
                            color: currentTab == 3 ? Colors.blue : Colors.grey,
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
