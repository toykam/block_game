import 'package:flutter/material.dart';

class DesignedText extends StatelessWidget {
  const DesignedText({Key? key, required this.text, this.fontFamily = 'FredokaOne', this.fontSize = 48, this.spacing = -5}) : super(key: key);

  final String text;
  final String fontFamily;
  final double fontSize;
  final double spacing;

  @override
  Widget build(BuildContext context) {
    return Text(text, style: TextStyle(
      fontFamily: fontFamily, fontSize: fontSize,
      letterSpacing: spacing,
      foreground: Paint()..shader = const LinearGradient(
        colors: <Color>[
          Color(0xFFFDC505),
          Color(0xFFFDB508)
        ],
        begin: Alignment.topLeft, end: Alignment.bottomRight
      ).createShader(const Rect.fromLTWH(0.0, 0.0, 200.0, 100.0)),
      shadows: const [
        /// down shadow
        Shadow(
          blurRadius: 1,
          offset: Offset(1, 1),
          color: Colors.black
        ),
        Shadow(
          blurRadius: 0,
          offset: Offset(1, 1),
          color: Color(0xFFF46D00)
        ),
        Shadow(
          blurRadius: 3,
          offset: Offset(0, 2),
          color: Color(0xFFF46D00)
        ),
        Shadow(
            blurRadius: 3,
            offset: Offset(0, 4),
            color: Color(0xFFF46D00),
            // color: Colors.amber.shade700,
        ),
        Shadow(
          blurRadius: 3,
          offset: Offset(0, 6),
          color: Color(0xFFF46D00),
            // color: Colors.amber.shade800,
        ),

        /// up shadow
        Shadow(
          blurRadius: 3,
          offset: Offset(0, -1),
          color: Color(0xFFF46D00),
          // color: Colors.amber.shade700
        ),

        Shadow(
          blurRadius: 3,
          offset: Offset(2, -2),
          color: Color(0xFFF46D00),
          // color: Colors.amber.shade700
        ),
        Shadow(
          blurRadius: 3,
          offset: Offset(-2, 0),
          color: Color(0xFFF46D00),
            // color: Colors.amber.shade700
        ),
      ],

    ),);
  }
}

class SubjectDesignedText extends StatelessWidget {
  const SubjectDesignedText({Key? key, required this.text, this.fontFamily = 'FredokaOne', this.fontSize = 48, this.spacing = -5}) : super(key: key);

  final String text;
  final String fontFamily;
  final double fontSize;
  final double spacing;

  @override
  Widget build(BuildContext context) {
    return Text(text, style: TextStyle(
      fontFamily: fontFamily, fontSize: fontSize,
      letterSpacing: spacing,
      foreground: Paint()..shader = const LinearGradient(
        colors: <Color>[
          Color(0xFFFDC505),
          Color(0xFFFDB508)
        ],
        begin: Alignment.topLeft, end: Alignment.bottomRight
      ).createShader(const Rect.fromLTWH(0.0, 0.0, 200.0, 100.0)),
      shadows: const [
        /// down shadow
        Shadow(
          blurRadius: 1,
          offset: Offset(1, 1),
          color: Colors.black
        ),
        Shadow(
          blurRadius: 0,
          offset: Offset(1, 1),
          color: Color(0xFFF46D00)
        ),
        Shadow(
          blurRadius: 3,
          offset: Offset(0, 2),
          color: Color(0xFFF46D00)
        ),
        Shadow(
            blurRadius: 3,
            offset: Offset(0, 4),
            color: Color(0xFFF46D00),
            // color: Colors.amber.shade700,
        ),
        Shadow(
          blurRadius: 3,
          offset: Offset(0, 6),
          color: Color(0xFFF46D00),
            // color: Colors.amber.shade800,
        ),

        /// up shadow
        Shadow(
          blurRadius: 3,
          offset: Offset(0, -1),
          color: Color(0xFFF46D00),
          // color: Colors.amber.shade700
        ),

        Shadow(
          blurRadius: 3,
          offset: Offset(2, -2),
          color: Color(0xFFF46D00),
          // color: Colors.amber.shade700
        ),
        Shadow(
          blurRadius: 3,
          offset: Offset(-2, 0),
          color: Color(0xFFF46D00),
            // color: Colors.amber.shade700
        ),
      ],

    ), textAlign: TextAlign.center,);
  }
}
