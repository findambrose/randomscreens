import 'package:flutter/material.dart';

class CurvePainter extends CustomPainter {
  

  @override
  void paint(Canvas canvas, Size size) {
    // TODO: implement paint
    var paint = Paint();
    paint.color = Colors.redAccent;
    paint.style = PaintingStyle.stroke;
   paint.strokeWidth = 35;

   var paint2 = Paint();
   paint2.color = Colors.red;
    paint2.style = PaintingStyle.stroke;
   paint2.strokeWidth = 20;

   var paint3 = Paint();
   paint3.color = Colors.red[300];
    paint3.style = PaintingStyle.stroke;
   paint3.strokeWidth = 20;

   var paint4 = Paint();
   paint4.color = Colors.red[700];
    paint4.style = PaintingStyle.stroke;
   paint4.strokeWidth = 20;

    // var path = Path();
     

    canvas.drawArc(Rect.fromLTWH(104.5, 30, 115, 115 ), 2.0, 1.80, false, paint);
    canvas.drawArc(Rect.fromLTWH(110, 35, 115, 115 ), 3.8, 1.3, false, paint2);
    canvas.drawArc(Rect.fromLTWH(110, 35, 115, 115 ), 5.3, 1.25, false, paint3);
    
    canvas.drawArc(Rect.fromLTWH(110, 35, 115, 115 ), 6.425, 0.2, false, paint4);
    canvas.drawArc(Rect.fromLTWH(110, 35, 115, 115 ), 6.725, 0.6, false, paint3);
  
 // canvas.drawRect(Rect.fromLTWH(110, 10, 120, 120 ), paint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    // TODO: implement shouldRepaint
    return true;
  }
  
  
}
