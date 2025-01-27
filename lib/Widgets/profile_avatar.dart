import 'package:flutter/material.dart';
import 'package:avatar_glow/avatar_glow.dart';

class ProfileAvatar extends StatelessWidget {
  final double size;
  final Color glowColor;
  final Color? borderColor;
  final double? borderWidth;

  const ProfileAvatar({
    super.key,
    required this.size,
    required this.glowColor,
    this.borderColor,
    this.borderWidth,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: borderColor != null
          ? BoxDecoration(
              shape: BoxShape.circle,
              border: Border.all(
                color: borderColor!,
                width: borderWidth ?? 2.0,
              ),
            )
          : null,
      child: CircleAvatar(
        radius: size / 2,
        backgroundColor: Colors.green,
        child: Icon(
          Icons.person,
          size: size * 0.6,
          color: Colors.white,
        ),
      ),
    );
  }
}

class _MaleAvatarPainter extends CustomPainter {
  final Color color;

  _MaleAvatarPainter(this.color);

  @override
  void paint(Canvas canvas, Size size) {
    final Paint paint = Paint()
      ..color = color
      ..style = PaintingStyle.stroke
      ..strokeWidth = 2;

    final Paint fillPaint = Paint()
      ..color = color
      ..style = PaintingStyle.fill;

    // Head
    canvas.drawCircle(
      Offset(size.width * 0.5, size.height * 0.4),
      size.width * 0.2,
      paint,
    );

    // Body
    final Path bodyPath = Path()
      ..moveTo(size.width * 0.3, size.height * 0.5)
      ..lineTo(size.width * 0.7, size.height * 0.5)
      ..lineTo(size.width * 0.8, size.height * 0.9)
      ..lineTo(size.width * 0.2, size.height * 0.9)
      ..close();
    canvas.drawPath(bodyPath, paint);

    // Eyes
    canvas.drawCircle(
      Offset(size.width * 0.4, size.height * 0.35),
      size.width * 0.03,
      fillPaint,
    );
    canvas.drawCircle(
      Offset(size.width * 0.6, size.height * 0.35),
      size.width * 0.03,
      fillPaint,
    );

    // Smile
    final Path smilePath = Path()
      ..moveTo(size.width * 0.4, size.height * 0.45)
      ..quadraticBezierTo(
        size.width * 0.5,
        size.height * 0.5,
        size.width * 0.6,
        size.height * 0.45,
      );
    canvas.drawPath(smilePath, paint);

    // Hair
    final Path hairPath = Path()
      ..moveTo(size.width * 0.3, size.height * 0.25)
      ..lineTo(size.width * 0.4, size.height * 0.2)
      ..lineTo(size.width * 0.5, size.height * 0.25)
      ..lineTo(size.width * 0.6, size.height * 0.2)
      ..lineTo(size.width * 0.7, size.height * 0.25);
    canvas.drawPath(hairPath, paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => false;
}
