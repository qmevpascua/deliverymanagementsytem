import 'package:flutter/cupertino.dart';

class SmallText extends StatelessWidget {
  Color? color;
  final String text;
  double size;
  double height;
  SmallText({Key? key, this.color = const Color(0xFF000000),
    required this.text,
    this.size = 14,
    this.height = 1.2,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
        text,

        style: TextStyle(
            fontFamily: 'Inter',
            color: color,
            fontSize: size,
            fontWeight: FontWeight.w300,
            height: height,

        )
    );
  }
}
