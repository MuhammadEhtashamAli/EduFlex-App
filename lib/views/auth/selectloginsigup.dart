import 'package:eduflex/views/auth/sigin.dart';
import 'package:eduflex/views/auth/sigup.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../utlis/color.dart';
import '../../widget/coustoumbutton.dart';

class SelectLoginSignUp extends StatelessWidget {
  const SelectLoginSignUp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
              child: Column(
                children: [
                  Image.asset(
                    "images/appthemeimage1.png",
                    fit: BoxFit.cover,
                    height: 200, // Set maximum height for the image
// Cover the width completely
                  ),
                  SizedBox(height: 30),
                  Spacer(),
                  Column(
                    children: [
                      CustomButton(
                        color: AppColors.whitecolor,
                        text: "Sign In",
                        textStyle: AppStyles.purple16,
                        onTap: () {

                          Navigator.of(context).pushReplacement(
                            MaterialPageRoute(
                              builder: (context) =>
                                  SigIn(), // Replace HomeScreen with your actual home page widget
                            ),
                          );
                        },
                      ),
                      SizedBox(height: 20),
                      CustomButton(
                        color: AppColors.purplecolor,
                        text: "Sign up",
                        textStyle: AppStyles.white16,
                        onTap: () {
                          Get.to(Sigup());
                        },
                      ),
                    ],
                  ),
                  Spacer(),
                  Image.asset(
                    "images/appthemeimage.png",
                    height: 200, // Set maximum height for the image
                    fit: BoxFit.cover, // Cover the width completely
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
