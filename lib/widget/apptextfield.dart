import 'package:flutter/material.dart';
import '../utlis/color.dart';

class AppTextField extends StatelessWidget {
  final String hintText;
  final IconData? prefixIcon;
  final IconData? suffixIcon;
  final TextInputType? keyboardType;
  final TextEditingController? controller;
  final bool obscureText;
  final Function(String)? onChanged;
  final bool applyLeftPadding;
  final Widget? suffiixIcon;

  AppTextField({
    this.suffiixIcon,
    required this.hintText,
    this.prefixIcon,
    this.suffixIcon,
    this.keyboardType,
    this.controller,
    this.obscureText = false,
    this.onChanged,
    this.applyLeftPadding = false,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 48,
      width: 269,
      decoration: BoxDecoration(
        color: AppColors.whitecolor,
        borderRadius: BorderRadius.circular(25),
      ),
      child: Padding(
        padding: EdgeInsets.only(left: applyLeftPadding ? 20 : 0),
        child: TextFormField(
          decoration: InputDecoration(
            fillColor: AppColors.lightgrey,
            border: InputBorder.none,
            prefixIcon: prefixIcon != null
                ? Icon(prefixIcon, color: AppColors.greycolor)
                : null,
            suffixIcon: suffiixIcon,
            // suffixIcon != null
            //     ? Icon(suffixIcon, color: AppColors.purplecolor)
            //     : null,
            hintText: hintText,
            hintStyle: AppStyles.grey11,
          ),
          keyboardType: keyboardType,
          controller: controller,
          obscureText: obscureText,
          onChanged: onChanged,
        ),
      ),
    );
  }
}
