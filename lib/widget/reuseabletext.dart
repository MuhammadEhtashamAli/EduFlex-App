import 'package:flutter/material.dart';

class AppText extends StatelessWidget {
  final String text;
  final TextStyle? style;
  final List<TextSpan>? textSpans;
  final VoidCallback? onTap;

  AppText({required this.text, this.style, this.textSpans, this.onTap});

  @override
  Widget build(BuildContext context) {
    if (textSpans != null) {
      return RichText(
        text: TextSpan(
          text: text,
          style: style ?? TextStyle(),
          children: textSpans!,
        ),
      );
    } else {
      return InkWell(
        onTap: onTap,
        child: Text(
          text,
          style: style ?? TextStyle(),
        ),
      );
    }
  }
}
