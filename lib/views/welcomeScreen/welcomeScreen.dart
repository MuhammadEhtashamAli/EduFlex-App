import 'package:eduflex/utlis/color.dart';
import 'package:eduflex/views/auth/selectloginsigup.dart';
import 'package:eduflex/widget/reuseabletext.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class WelcomeScreen extends StatefulWidget {
  const WelcomeScreen({Key? key}) : super(key: key);

  @override
  State<WelcomeScreen> createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {
  @override
  void initState() {
    super.initState();
    // Add a delay of 3 seconds before navigating to the home page
    Future.delayed(Duration(seconds: 3), () {
      Navigator.of(context).pushReplacement(
        MaterialPageRoute(
          builder: (context) =>
              SelectLoginSignUp(), // Replace HomeScreen with your actual home page widget
        ),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            child: SingleChildScrollView(
              child: Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    // Image at the top covering width
                    Image.asset(
                      "images/appthemeimage1.png",
                      fit: BoxFit.cover,
                      height: 200, // Set maximum height for the image
                    ),
                    SizedBox(
                        height:
                            20), // Add some space between the image and text
                    // Container to hold the text and image
                    Container(
                      width: 250, // Adjust the width as needed
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Image.asset(
                            "images/logo.png",
                            width: 150, // Set maximum width for the image
                            height: 150, // Set maximum height for the image
                          ),
                          SizedBox(
                              height:
                                  20), // Add some space between the image and text
                          CircularProgressIndicator(),
                          AppText(
                            text: 'EDUFLEX',
                            style: AppStyles.lightpurple20,
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          // SizedBox(height: 20), // Add some space between the text and image
          // Image at the bottom covering width
          Image.asset(
            "images/appthemeimage.png",
            fit: BoxFit.cover,
            height: 200, // Set maximum height for the image
          ),
        ],
      ),
    );
  }
}
