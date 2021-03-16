import 'dart:ui';

import 'package:flutter/material.dart';

class RPSCustomPainter extends CustomPainter{

  @override
  void paint(Canvas canvas, Size size) {



    Paint paint_0 = new Paint()
      ..color = Color.fromARGB(255, 33, 150, 243)
      ..style = PaintingStyle.fill
      ..strokeWidth = 1.0;


    Path path_0 = Path();
    path_0.moveTo(size.width*0.5140000,size.height*0.6140000);
    path_0.lineTo(size.width*0.6220000,size.height*0.2320000);
    path_0.lineTo(size.width*0.6920000,size.height*0.5720000);
    path_0.lineTo(size.width*0.5110000,size.height*0.3220000);
    path_0.lineTo(size.width*0.7250000,size.height*0.3560000);
    path_0.lineTo(size.width*0.5136600,size.height*0.6166400);

    canvas.drawPath(path_0, paint_0);


  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }

}
