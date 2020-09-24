import 'package:animaciones/pages/animaciones_page.dart';
import 'package:animaciones/pages/header_page.dart';
import 'package:animaciones/retos/cuadrado_animado_page.dart';
import 'package:flutter/material.dart';

 
void main() => runApp(MyApp());
 
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Diseños',
      //home: AnimacionesPage()
      home: CuadradoAnimadoPage()
    );
  }
}