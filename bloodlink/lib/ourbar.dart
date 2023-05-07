import 'package:flutter/cupertino.dart';

class MyShape extends StatelessWidget implements PreferredSizeWidget {
  final bool flipped;

  const MyShape({Key? key, this.flipped = false}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CustomPaint(
      size: const Size(double.infinity, 250),
      painter: flipped ? MyShapeFlippedPainter() : MyShapePainter(),
    );
  }

  @override
  Size get preferredSize => const Size(double.infinity, 250);
}

class MyShapePainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final Paint redPaint = Paint()
      ..color = const Color.fromARGB(255, 199, 40, 28);
    final Paint whitePaint = Paint()
      ..color = const Color.fromARGB(255, 255, 255, 255);

    final Rect redRect = Rect.fromLTRB(0, 0, size.width, size.height - 20);
    canvas.drawRect(redRect, redPaint);

    final Path whiteTriangle = Path();
    whiteTriangle.moveTo(0, size.height - 19);
    whiteTriangle.lineTo(size.width / 1.3, 120);
    whiteTriangle.lineTo(size.width, size.height - 19);
    whiteTriangle.close();
    canvas.drawPath(whiteTriangle, whitePaint);
  }

  @override
  bool shouldRepaint(MyShapePainter oldDelegate) {
    return false;
  }
}

class MyShapeFlippedPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final Paint redPaint = Paint()
      ..color = const Color.fromARGB(255, 199, 40, 28);
    final Paint whitePaint = Paint()
      ..color = const Color.fromARGB(255, 255, 255, 255);

    final Rect redRect = Rect.fromLTRB(0, 10, size.width, size.height + 9);
    canvas.drawRect(redRect, redPaint);

    canvas.save(); // Save the current canvas state
    canvas.scale(-1.0, 1.0); // Scale the canvas horizontally by -1
    final Path whiteTriangle = Path();
    whiteTriangle.moveTo(
        -size.width, 10); // Move to the bottom right corner of the rectangle
    whiteTriangle.lineTo(-size.width / 4,
        size.height - 100); // Line to the bottom left corner of the rectangle
    whiteTriangle.lineTo(0, 10); // Line to the top left corner of the rectangle
    whiteTriangle.close();
    canvas.drawPath(whiteTriangle, whitePaint);
    canvas.restore(); // Restore the canvas state
  }

  @override
  bool shouldRepaint(MyShapeFlippedPainter oldDelegate) {
    return false;
  }
}
