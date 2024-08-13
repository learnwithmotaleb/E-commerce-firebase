import 'package:flutter/material.dart';

class TCustomCurvedEdge extends CustomClipper<Path>{
  @override
  getClip(Size size) {
    var path = Path();
    path.lineTo(0, size.height);

    final firstCurve = Offset(0, size.height - 20);
    final lastCurve = Offset(30, size.height - 20);
    path.quadraticBezierTo(firstCurve.dx, firstCurve.dy, lastCurve.dx, lastCurve.dy);

    final secondFirstCurves = Offset(0, size.height - 20);
    final secondLastCurves = Offset(size.width -30, size.height - 20);
    path.quadraticBezierTo(secondFirstCurves.dx, secondFirstCurves.dy, secondLastCurves.dx, secondLastCurves.dy);

    final thirdFirstCurves = Offset(size.width, size.height - 20);
    final thirdLastCurves = Offset(size.width, size.height);
    path.quadraticBezierTo(thirdFirstCurves.dx, thirdFirstCurves.dy, thirdLastCurves.dx, thirdLastCurves.dy);


    path.lineTo(size.width, 0);
    path.close();
    return path;
    
  }

  @override
  bool shouldReclip(covariant CustomClipper oldClipper) {
    return true;
  }

}