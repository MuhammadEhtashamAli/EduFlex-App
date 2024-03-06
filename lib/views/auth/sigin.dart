// ignore_for_file: prefer_const_constructors_in_immutables, avoid_print, use_super_parameters

import 'package:eduflex/utlis/color.dart';
import 'package:eduflex/views/auth/forgotpassword/forgotScreen.dart';
import 'package:eduflex/widget/reuseabletext.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../../navigation_bar/navigation_bar.dart';
import '../../widget/apptextfield.dart';
import '../../widget/coustoumbutton.dart';
import 'sigup.dart';

class SigIn extends StatefulWidget {
  SigIn({Key? key}) : super(key: key);

  @override
  State<SigIn> createState() => _SigInState();
}

class _SigInState extends State<SigIn> {
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  String errorMessage = '';
  final formKey = GlobalKey<FormState>();
  bool showPass = true;
  bool isLoading = false;
  bool _obscureText = true;
  void _toggle() {
    setState(() {
      _obscureText = !_obscureText;
    });
  }

  @override
  void initState() {
    super.initState();
  }

  userLogin() async {
    setState(() {
      isLoading = true;
    });
    SharedPreferences preferences = await SharedPreferences.getInstance();
    try {
      UserCredential userCredential = await FirebaseAuth.instance
          .signInWithEmailAndPassword(
              email: emailController.text, password: passwordController.text);
      await preferences.setBool('isLoggedIn', true);
      await preferences.setString('userName', emailController.text.trim());
      setState(() {
        isLoading = false;
      });
      Fluttertoast.showToast(msg: 'Successfully logged in');
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => const MaterialYou()),
      );
      emailController.text.isEmpty;
      passwordController.text.isEmpty;


    } on FirebaseAuthException catch (e) {
      setState(() {
        isLoading = false;
      });
      if (e.code == 'user-not-found') {
        print("No User Found for that Email");
        Fluttertoast.showToast(msg: 'No User Found for that Email');
      } else if (e.code == 'wrong-password') {
        print("Wrong Password Provided by User");
        Fluttertoast.showToast(msg: 'Wrong Password Provided by User');
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    bool isSignInButtonEnabled =
        emailController.text.isNotEmpty && passwordController.text.isNotEmpty;
    return Scaffold(
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Expanded(
              child: SingleChildScrollView(
                child: Center(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      Image.asset(
                        "images/appthemeimage1.png",
                        fit: BoxFit.cover,
                      ),
                      const SizedBox(height: 40),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 20),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            AppText(
                              text: "Hello",
                              style: AppStyles.black32,
                            ),
                            const SizedBox(height: 20),
                            AppText(
                              text: "Sign in to Your Account",
                              style: AppStyles.black20,
                            ),
                            const SizedBox(height: 15),
                            AppTextField(
                              hintText: "Email",
                              prefixIcon: Icons.person,
                              keyboardType: TextInputType.emailAddress,
                              controller: emailController,
                              onChanged: (value) {
                                setState(() {
                                  errorMessage =
                                      ''; // Clear error message when user types
                                });
                              },
                            ),
                            const SizedBox(height: 15),
                            AppTextField(
                              obscureText: _obscureText,
                              // suffixIcon: _obscureText
                              //     ? Icons.visibility_off
                              // : Icons.visibility,
                              hintText: "Password",
                              prefixIcon: Icons.lock,
                              suffiixIcon: IconButton(
                                  icon: Icon(
                                    _obscureText
                                        ? Icons.visibility_off
                                        : Icons.visibility,
                                    color: Colors.grey[600],
                                  ),
                                  onPressed: () {
                                    setState(() {
                                      _toggle();
                                    });
                                  }),
                              keyboardType: TextInputType.visiblePassword,
                              controller: passwordController,
                              onChanged: (value) {
                                setState(() {
                                  errorMessage =
                                      ''; // Clear error message when user types
                                });
                              },
                            ),
                            Padding(
                              padding:
                                  const EdgeInsets.only(top: 20, left: 130),
                              child: InkWell(
                                onTap: () {
                                  Get.to(const ForgotScreen());
                                },
                                child: AppText(
                                  text: "Forgot Password?",
                                  style: AppStyles.grey11,
                                ),
                              ),
                            ),
                            const SizedBox(height: 15),
                            if (errorMessage.isNotEmpty)
                              Padding(
                                padding: const EdgeInsets.only(bottom: 10),
                                child: AppText(
                                  text: errorMessage,
                                  style: const TextStyle(
                                    color: Colors.red,
                                    fontSize: 14,
                                  ),
                                ),
                              ),
                            CustomButton(
                              color: isSignInButtonEnabled
                                  ? AppColors.purplecolor
                                  : AppColors.greycolor,
                              text: "Sign In",
                              textStyle: AppStyles.white16,
                              isLoading: isLoading,
                              onTap: () async {
                                if (emailController.text.isEmpty &&
                                    passwordController.text.isEmpty) {
                                  Get.snackbar(
                                    'Error',
                                    'Please enter email and password',
                                    backgroundColor: AppColors.whitecolor,
                                    snackPosition: SnackPosition.TOP,
                                  );
                                } else if (emailController.text.isEmpty) {
                                  Get.snackbar(
                                    'Error',
                                    'Please enter email',
                                    backgroundColor: Colors.white,
                                    snackPosition: SnackPosition.TOP,
                                  );
                                } else if (passwordController.text.isEmpty) {
                                  Get.snackbar(
                                    'Error',
                                    'Please enter password',
                                    backgroundColor: Colors.white,
                                    snackPosition: SnackPosition.TOP,
                                  );
                                } else {
                                  userLogin();
                                }
                              },
                            ),
                            const SizedBox(height: 30),
                            AppText(
                              text: "Don't have an account?",
                              style: AppStyles.black13,
                              textSpans: [
                                TextSpan(
                                  text: " Sign up",
                                  style: AppStyles.black500,
                                  recognizer: TapGestureRecognizer()
                                    ..onTap = () {
                                      Get.to(const Sigup());
                                      print("Sign up tapped");
                                    },
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Image.asset(
              "images/appthemeimage.png",
              fit: BoxFit.cover,
            ),
          ],
        ),
      ),
    );
  }
}
