import 'package:eduflex/widget/reuseabletext.dart';
import 'package:flutter/material.dart';
import '../utlis/color.dart';

class AppDropdown extends StatelessWidget {
  final String hintText;
  final List<String> options;
  final String? selectedValue;
  final void Function(String?)? onChanged;
  final IconData? dropdownIcon; // New property for the dropdown icon
  final bool applyLeftPadding;
  final bool applyRightPadding;

  AppDropdown({
    required this.hintText,
    required this.options,
    this.selectedValue,
    this.onChanged,
    this.dropdownIcon, // Include the new property in the constructor
    this.applyLeftPadding = false,
    this.applyRightPadding = false,
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
        padding: EdgeInsets.only(
            left: applyLeftPadding ? 0 : 20, right: applyRightPadding ? 0 : 10),
        child: DropdownButtonFormField<String>(
          decoration: InputDecoration(
            fillColor: AppColors.lightgrey,
            border: InputBorder.none,
            hintText: hintText,
            hintStyle: AppStyles.grey14,
          ),
          items: options.map((String option) {
            return DropdownMenuItem<String>(
                value: option,
                child: AppText(
                  text: option,
                  style: AppStyles.grey14,
                ));
          }).toList(),
          value: selectedValue,
          onChanged: onChanged,
          icon: dropdownIcon != null
              ? Icon(dropdownIcon)
              : null, // Use the provided dropdown icon
        ),
      ),
    );
  }
}
