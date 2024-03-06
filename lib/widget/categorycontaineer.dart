import 'package:eduflex/utlis/color.dart';
import 'package:eduflex/widget/reuseabletext.dart';
import 'package:flutter/material.dart';


class CustomCategoryContainer extends StatelessWidget {
  final String imagePath;
  final String categoryName;
  final VoidCallback? onTap;

  CustomCategoryContainer({
    required this.imagePath,
    required this.categoryName,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Column(
        children: [
          Container(
            height: 150,width: 180,            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12),
              // color: AppColors.lightpurple,
            ),
            child: Container(
              // height: 200,
              // width: 300,
              child: Image.asset(imagePath,fit: BoxFit.cover,
              ),
              // color: Colors.white,
            ),
          ),
          SizedBox(height: 5,),
          AppText(
            text: categoryName,
            style: AppStyles.black13,
          ),
        ],
      ),
    );
  }
}
