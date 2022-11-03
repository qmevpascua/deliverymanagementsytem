import 'package:flutter/cupertino.dart';

class BigText extends StatelessWidget {
  Color? color;
  final String text;
  double size;
  TextOverflow overFlow;
  BigText({Key? key, this.color = const Color(0xFF000000),
    required this.text,
    this.size = 20,
    this.overFlow = TextOverflow.ellipsis
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      overflow: overFlow,
      style: TextStyle(
        fontFamily: 'Inter',
        color: color,
        fontSize: size,
        fontWeight: FontWeight.w500
      )
    );
  }
}
