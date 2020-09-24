import 'package:flutter/material.dart';
 import 'dart:math' as Math;
 
class AnimacionesPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: CuadradoAnimado(),
      ),
    );
  }
}

class CuadradoAnimado extends StatefulWidget {

  @override
  _CuadradoAnimadoState createState() => _CuadradoAnimadoState();
}

class _CuadradoAnimadoState extends State<CuadradoAnimado>  with SingleTickerProviderStateMixin{

  AnimationController controller;
  Animation<double> rotacion;
  Animation<double> opacidad;
  Animation<double> moverDerecha;
  Animation<double> agrandar;
  Animation<double> opacidadOut;

  @override
  void initState() {
    // TODO: implement initState

    controller = new AnimationController(
      vsync: this, //cuadrado con la resolución de la pantalla
      duration: Duration(
        milliseconds: 4000
      )
    );

    rotacion = Tween(begin: 0.0, end:2.0 * Math.pi).animate(
      CurvedAnimation(parent: controller, curve: Curves.easeOut
       // curve: Interval(0, 0.25, curve: Curves.easeOut)// punto del tiempoa inicio de la animación en base a porcentajes
      )
    );

    opacidad = Tween(begin: 0.1 , end: 1.0).animate(
      CurvedAnimation(parent: controller,  curve: Interval(0,0.25, curve: Curves.easeOut))
    );

    opacidadOut = Tween(begin: 0.0 , end: 1.0).animate(
      CurvedAnimation(parent: controller,  curve: Interval(0.75,1, curve: Curves.easeOut))
    );

    moverDerecha = Tween(begin: 0.0, end: 200.0).animate(
       CurvedAnimation(parent: controller,  curve: Curves.easeOut)// punto del tiempoa inicio de la animación en base a porcentajes
    );

    agrandar = Tween(begin: 0.0, end: 2.0).animate( // 2 el doble de tamanio
       CurvedAnimation(parent: controller,  curve: Curves.easeOut)// punto del tiempoa inicio de la animación en base a porcentajes
    );

    controller.addListener(() {
      //cada vez que la animacion cambia
      //print('status ${controller.status}');
      if(controller.status == AnimationStatus.completed){
        //controller.reverse();
        //controller.repeat();
        controller.reset();
      } 
     /*  else if (controller.status == AnimationStatus.dismissed){
        controller.forward();
      } */

    });

    super.initState();
  }

  @override
  void dispose() {
    // TODO: implement dispose
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
   // return _Rectangulo();
  //play /reproduccion
    controller.forward();

    return AnimatedBuilder(
      animation: controller,
      child: _Rectangulo(),
      builder: (BuildContext context, Widget childRectangulo) {
        print('status   ${controller.value}');
        print('Opacidad ${rotacion.value}');
        //print(rotacion.value);
        return Transform.translate(
                  offset: Offset(moverDerecha.value, 0),
                  child: Transform.rotate(        
                      angle: rotacion.value,
                      child: Opacity(
                        opacity: opacidad.value - opacidadOut.value,
                        child: Transform.scale(
                          scale: agrandar.value,
                          child: childRectangulo
                        ),
                      )
                    ),
              );
      },
    );
  }
}

/*
crear snippets ctrl +shift + p  
seleccionamos Preferences: configure user snippets
abre diff.json
pegamos el codigo
 */
class _Rectangulo extends StatelessWidget {
  @override
  Widget build( BuildContext context ) {
    return Container(
      width: 70,
      height: 70,
      decoration: BoxDecoration(
        color: Colors.blue
      ),
    );
  }
}

