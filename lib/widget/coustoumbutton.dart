import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  final Color color;
  final String text;
  final VoidCallback? onTap;
  final TextStyle? textStyle;
  final double height;
  final double width;
  final bool isLoading;
  final Widget? suffiixIcon;

  CustomButton({
    required this.color,
    required this.text,
    this.onTap,
    this.suffiixIcon,
    this.textStyle,
    this.height = 48,
    this.width = 269,
    this.isLoading = false,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(25),
      ),
      elevation: 3,
      child: InkWell(
        onTap: onTap,
        borderRadius: BorderRadius.circular(25),
        child: Container(
          height: height,
          width: width,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(25),
            color: color,
          ),
          child: isLoading
              ? Center(
            child: CircularProgressIndicator(
              valueColor: AlwaysStoppedAnimation<Color>(Colors.white),
            ),
          )
              :Center(
            child: Text(
              text,
              style: textStyle ?? TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 16,
                color: Colors.black, // You can customize the text color
              ),
            ),
          ),
        ),
      ),
    );
  }
}
