
import 'dart:math';

import 'package:flutter/material.dart';
import 'package:try_alarm/constants/colors.dart';

class Clock_design extends StatefulWidget {
  const Clock_design({super.key});

  @override
  State<Clock_design> createState() => _Clock_designState();
}

class _Clock_designState extends State<Clock_design> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 300,
      height: 300,
      child: CustomPaint(
        painter: Clockpainter(),
      ),

    );
  }
 
}
class Clockpainter extends CustomPainter {
  var dateTime = DateTime.now();
  @override
  void paint(Canvas canvas, Size size) {
    var centerX = size.width / 2;
    var centerY = size.height / 2;
    var center = Offset(centerX, centerY);
    var radius = min(centerX, centerY);

    var fillBrush = Paint()..color = lightpink;
    var outlineBrush = Paint()
      ..color = Colors.white
      ..style = PaintingStyle.stroke
      ..strokeWidth = size.width / 40;
    var centerDotBrush = Paint()..color = Colors.white;

    var secHandBrush = Paint()
      ..color = Colors.red
      ..style = PaintingStyle.stroke
      ..strokeCap = StrokeCap.round
      ..strokeWidth = size.width / 60;

    var minHandBrush = Paint()
      ..color = Colors.yellow
      ..style = PaintingStyle.stroke
      ..strokeCap = StrokeCap.round
      ..strokeWidth = size.width / 30;

    var hourHandBrush = Paint()
      ..color=Colors.pink
      ..style = PaintingStyle.stroke
      ..strokeCap = StrokeCap.round
      ..strokeWidth = size.width / 30;

    var dashBrush = Paint()
      ..color = Colors.white
      ..style = PaintingStyle.stroke
      ..strokeWidth = 1;

    canvas.drawCircle(center, radius * 0.75, fillBrush);
    canvas.drawCircle(center, radius * 0.75, outlineBrush);

    var hourHandX = centerX + radius * 0.4 * cos((dateTime.hour * 30 + dateTime.minute * 0.5) * pi / 180);
    var hourHandY = centerY + radius * 0.4 * sin((dateTime.hour * 30 + dateTime.minute * 0.5) * pi / 180);
    canvas.drawLine(center, Offset(hourHandX, hourHandY), hourHandBrush);

    var minHandX = centerX + radius * 0.6 * cos(dateTime.minute * 6 * pi / 180);
    var minHandY = centerY + radius * 0.6 * sin(dateTime.minute * 6 * pi / 180);
    canvas.drawLine(center, Offset(minHandX, minHandY), minHandBrush);

    var secHandX = centerX + radius * 0.6 * cos(dateTime.second * 6 * pi / 180);
    var secHandY = centerY + radius * 0.6 * sin(dateTime.second * 6 * pi / 180);
    canvas.drawLine(center, Offset(secHandX, secHandY), secHandBrush);

    canvas.drawCircle(center, radius * 0.12, centerDotBrush);

    var outerRadius = radius;
    var innerRadius = radius * 0.9;
    for (var i = 0; i < 360; i += 12) {
      var x1 = centerX + outerRadius * cos(i * pi / 180);
      var y1 = centerY + outerRadius * sin(i * pi / 180);

      var x2 = centerX + innerRadius * cos(i * pi / 180);
      var y2 = centerY + innerRadius * sin(i * pi / 180);
      canvas.drawLine(Offset(x1, y1), Offset(x2, y2), dashBrush);
  }




}

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}
