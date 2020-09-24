import 'package:flutter/material.dart';

class HeaderCuadrado extends StatelessWidget {
  

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 300,
      color: Color(0xff615AAB), // colores hexadecimal 0xff PREFIJO
      
    );
  }


  /*
     decoration: BoxDecoration(
        borderRadius: BorderRadius.only(bottomLeft: Radius.circular(50))
      ),
  
   */
}

class HeaderBordesRedondeados extends StatelessWidget {
  

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 300, // colores hexadecimal 0xff PREFIJO
      decoration: BoxDecoration(
        color: Color(0xff615AAB),
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(50),
          bottomRight: Radius.circular(50)
        ),

      ),
    );
  }


  /*
     decoration: BoxDecoration(
        borderRadius: BorderRadius.only(bottomLeft: Radius.circular(50))
      ),
  
   */

  
}

class HeaderDiagonal extends StatelessWidget {
  

  @override
  Widget build(BuildContext context) {
    return Container(
      height: double.infinity,
      width: double.infinity,
      //color: Color(0xff615AAB), // colores hexadecimal 0xff PREFIJO
      child: CustomPaint(
        painter: _HeaderDiagonalPainter(),
      ),
      
    );
  }


  /*
    CustomPainter
    shouldRepaint : siempre tru cuando no es mucho 
    tiene el metodo paint canvas rl cuadro blanco para pintar, size tamaño de la pantalla
   */

}


class _HeaderDiagonalPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
      // TODO: implement paint
      final lapiz = Paint();

      lapiz.color = Color(0xff615AAB);
      lapiz.style = PaintingStyle.fill; // .fill .stroke
      lapiz.strokeWidth = 10;

      final path = new Path();
      // dibujar con el path y el lapiz
      path.moveTo(0,size.height*0.35);
      path.lineTo(size.width, size.height*0.30);

       path.lineTo(size.width,0);
       path.lineTo(0,0);
       path.lineTo(0, size.height*.5);
      
      canvas.drawPath(path, lapiz);
    }
  
    @override
    bool shouldRepaint(CustomPainter oldDelegate) {
   
      return true;
    }

}



class HeaderTriangular extends StatelessWidget {
  

  @override
  Widget build(BuildContext context) {
    return Container(
      height: double.infinity,
      width: double.infinity,
      //color: Color(0xff615AAB), // colores hexadecimal 0xff PREFIJO
      child: CustomPaint(
        painter: _HeaderTriangularPainter(),
      ),
      
    );
  }
}  

class _HeaderTriangularPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
      // TODO: implement paint
      final lapiz = Paint();

      lapiz.color = Color(0xff615AAB);
      lapiz.style = PaintingStyle.fill; // .fill .stroke
      lapiz.strokeWidth = 10;

      final path = new Path();
      // dibujar con el path y el lapiz
      //path.moveTo(0,0);
      path.lineTo(size.width, size.height);
      //path.lineTo(0, size.height);
       path.lineTo(size.width,0);
       path.lineTo(0,0);
      
      canvas.drawPath(path, lapiz);
    }
  
    @override
    bool shouldRepaint(CustomPainter oldDelegate) {
   
      return true;
    }

}


class HeaderPico extends StatelessWidget {
  

  @override
  Widget build(BuildContext context) {
    return Container(
      height: double.infinity,
      width: double.infinity,
      //color: Color(0xff615AAB), // colores hexadecimal 0xff PREFIJO
      child: CustomPaint(
        painter: _HeaderPicoPainter(),
      ),
      
    );
  }
}  

class _HeaderPicoPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
      // TODO: implement paint
      final lapiz = Paint();

      lapiz.color = Color(0xff615AAB);
      lapiz.style = PaintingStyle.fill; // .fill .stroke
      lapiz.strokeWidth = 10;

      final path = new Path();
      // dibujar con el path y el lapiz
      path.lineTo(0,size.height*0.20);
      path.lineTo(size.width*0.5, size.height*0.28);
      path.lineTo(size.width,size.height*0.20);
      path.lineTo(size.width, 0);
       
      
      canvas.drawPath(path, lapiz);
    }
  
    @override
    bool shouldRepaint(CustomPainter oldDelegate) {
   
      return true;
    }

}
class HeaderCurvo extends StatelessWidget {
  

  @override
  Widget build(BuildContext context) {
    return Container(
      height: double.infinity,
      width: double.infinity,
      //color: Color(0xff615AAB), // colores hexadecimal 0xff PREFIJO
      child: CustomPaint(
        painter: _HeaderCurvoPainter(),
      ),
      
    );
  }
}  

class _HeaderCurvoPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
      // TODO: implement paint
      final lapiz = Paint();

      lapiz.color = Color(0xff615AAB);
      lapiz.style = PaintingStyle.fill; // .fill .stroke
      lapiz.strokeWidth = 20;

      final path = new Path();
      // dibujar con el path y el lapiz
      path.lineTo(0,size.height*0.25);
      path.quadraticBezierTo(size.width *0.50, size.height*0.40, size.width,size.height*0.25); //genera una curva y el primer punto donde va a pasar la curva
      path.lineTo(size.width,0);
    
       
      
      canvas.drawPath(path, lapiz);
    }
  
    @override
    bool shouldRepaint(CustomPainter oldDelegate) {
   
      return true;
    }

}

class HeaderGradient extends StatelessWidget {
  

  @override
  Widget build(BuildContext context) {
    return Container(
      height: double.infinity,
      width: double.infinity,
      //color: Color(0xff615AAB), // colores hexadecimal 0xff PREFIJO
      child: CustomPaint(
        painter: _HeaderGradientPainter(),
      ),
      
    );
  }
}  

class _HeaderGradientPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
      // TODO: implement paint

      final Rect rect = Rect.fromCircle(
        center: Offset(0, 55.0),
        radius: 180
      );

      final Gradient gradiente = new LinearGradient(
        begin: Alignment.topCenter,
        end: Alignment.bottomCenter,
        colors: <Color>[
          Color(0xff6D05E8),
          Color(0xffC012FF),
          Color(0xff6D05FA),


        ],
        stops: [
          0.0,
          0.5,
          1.0
        ]
      );

      final lapiz = new Paint()..shader = gradiente.createShader(rect);

      //lapiz.color = Colors.red;
      lapiz.style = PaintingStyle.fill; // .fill .stroke
      lapiz.strokeWidth = 20;

      final path = new Path();
      // dibujar con el path y el lapiz
      path.lineTo(0,size.height*0.25);
      path.quadraticBezierTo(size.width *0.25, size.height*0.30, size.width*0.5,size.height*0.25); //genera una curva y el primer punto donde va a pasar la curva
      path.quadraticBezierTo(size.width *0.75, size.height*0.20, size.width,size.height*0.25);
      path.lineTo(size.width, 0);
    
       
      
      canvas.drawPath(path, lapiz);
    }
  
    @override
    bool shouldRepaint(CustomPainter oldDelegate) {
   
      return true;
    }

}


class HeaderWave extends StatelessWidget {
  

  @override
  Widget build(BuildContext context) {
    return Container(
      height: double.infinity,
      width: double.infinity,
      //color: Color(0xff615AAB), // colores hexadecimal 0xff PREFIJO
      child: CustomPaint(
        painter: _HeaderWavePainter(),
      ),
      
    );
  }
}  

class _HeaderWavePainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
      // TODO: implement paint
      final lapiz = Paint();

      lapiz.color = Color(0xff615AAB);
      lapiz.style = PaintingStyle.fill; // .fill .stroke
      lapiz.strokeWidth = 20;

      final path = new Path();
      // dibujar con el path y el lapiz
      path.lineTo(0,size.height*0.25);
      path.quadraticBezierTo(size.width *0.25, size.height*0.30, size.width*0.5,size.height*0.25); //genera una curva y el primer punto donde va a pasar la curva
      path.quadraticBezierTo(size.width *0.75, size.height*0.20, size.width,size.height*0.25);
      path.lineTo(size.width, 0);
    
       
      
      canvas.drawPath(path, lapiz);
    }
  
    @override
    bool shouldRepaint(CustomPainter oldDelegate) {
   
      return true;
    }

}


