import 'package:bottom_navigation_bar/pages/beneficio.dart';
import 'package:bottom_navigation_bar/pages/inicio.dart';
import 'package:bottom_navigation_bar/pages/ubicacion.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: myHomePage(),
    );
  }
}

class myHomePage extends StatefulWidget {
  const myHomePage({super.key});

  @override
  State<myHomePage> createState() => _myHomePageState();
}

class _myHomePageState extends State<myHomePage> {
  int currentIndexSelected = 0;
  var pantallas = [
    inicio(),
    beneficio(),
    ubicacion()
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(Icons.reorder),
        title: Text("BDF"),
        backgroundColor: Color(0XFF0B4884),
      ),
      body: pantallas[currentIndexSelected],
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.shifting,
        currentIndex: currentIndexSelected,
        selectedItemColor: Colors.amber,
        onTap: (value) {
          setState(() {
            currentIndexSelected = value;
          });
        },
        items: const [
          BottomNavigationBarItem(
              backgroundColor: Color(0XFF0B4884),
              icon: Icon(Icons.home),
              label: "Inicio"
          ),
          BottomNavigationBarItem(
              backgroundColor: Color(0XFF0B4884),
              icon: Icon(Icons.work),
              label: "Beneficios"
          ),
          BottomNavigationBarItem(
              backgroundColor: Color(0XFF0B4884),
              icon: Icon(Icons.location_on),
              label: "Ubicaciones"
          )
        ],
      ),
    );
  }
}


/*class myHomePage extends StatelessWidget {
  const myHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(Icons.reorder),
        title: Text("BDF"),
        backgroundColor: Color(0XFF0B4884),
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.shifting,
        currentIndex: 0,
        selectedItemColor: Colors.amber,
        onTap: (value) {

        },
        items: const [
          BottomNavigationBarItem(
              backgroundColor: Color(0XFF0B4884),
            icon: Icon(Icons.home),
            label: "Inicio"
          ),
          BottomNavigationBarItem(
              backgroundColor: Color(0XFF0B4884),
              icon: Icon(Icons.work),
              label: "Beneficios"
          ),
          BottomNavigationBarItem(
              backgroundColor: Color(0XFF0B4884),
              icon: Icon(Icons.location_on),
              label: "Ubicaciones"
          )
        ],
      ),
    );
  }
}

*/