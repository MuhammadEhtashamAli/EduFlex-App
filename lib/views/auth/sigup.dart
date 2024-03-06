import 'package:eduflex/views/auth/sigin.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:loading_indicator/loading_indicator.dart';
import '../../utlis/color.dart';
import '../../widget/apptextfield.dart';
import '../../widget/coustoumbutton.dart';
import '../../widget/reuseabletext.dart';

class Sigup extends StatefulWidget {
  const Sigup({Key? key}) : super(key: key);

  @override
  State<Sigup> createState() => _SigupState();
}

class _SigupState extends State<Sigup> {
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController nameController = TextEditingController();
  TextEditingController confirmController = TextEditingController();
  String errorMessage = '';

  final formKey = GlobalKey<FormState>();

  bool showPass = true;
  bool isLoading = false;
  bool _obscureText = true;
  bool _obscureConfirmText = true;

  void _toggle() {
    setState(() {
      _obscureText = !_obscureText;
    });
  }

  void _toggleConfirm() {
    setState(() {
      _obscureConfirmText = !_obscureConfirmText;
    });
  }

  @override
  void initState() {
    super.initState();
  }

  registration() async {
    isLoading = true;
    setState(() {});
    try {
      UserCredential userCredential = await FirebaseAuth.instance
          .createUserWithEmailAndPassword(
          email: emailController.text, password: passwordController.text);
      print(userCredential);
      isLoading = false;
      setState(() {});
      Fluttertoast.showToast(msg: 'Registered Successfully. Please Login');
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(
          builder: (context) => SigIn(),
        ),
      );
      emailController.text.isEmpty;
      passwordController.text.isEmpty;
      nameController.text.isEmpty;
      confirmController.text.isEmpty;

    } on FirebaseAuthException catch (e) {
      if (e.code == 'weak-password') {
        print("Password Provided is too Weak");
        isLoading = false;
        setState(() {});
        Fluttertoast.showToast(msg: 'Password Provided is too Weak');
      } else if (e.code == 'email-already-in-use') {
        print("Account Already exists");
        isLoading = false;
        setState(() {});
        Fluttertoast.showToast(msg: 'Account Already exists');
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    bool isSignUpButtonEnabled = emailController.text.isNotEmpty &&
        passwordController.text.isNotEmpty &&
        nameController.text.isNotEmpty &&
        confirmController.text.isNotEmpty &&
        passwordController.text == confirmController.text; // Check if passwords match

    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Image.asset(
                      "images/appthemeimage1.png",
                      fit: BoxFit.cover,
                      height: 200,
                    ),
                    SizedBox(height: 20),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          AppText(
                            text: "Register",
                            style: AppStyles.black32,
                          ),
                          SizedBox(height: 25),
                          AppTextField(
                            hintText: "Name",
                            prefixIcon: Icons.person_outline_outlined,
                            keyboardType: TextInputType.emailAddress,
                            controller: nameController,
                            onChanged: (value) {
                              setState(() {
                                errorMessage =
                                '';
                              });
                            },
                          ),
                          SizedBox(height: 20),
                          AppTextField(
                            hintText: "Email",
                            prefixIcon: Icons.person,
                            keyboardType: TextInputType.emailAddress,
                            controller: emailController,
                            onChanged: (value) {
                              setState(() {
                                errorMessage =
                                '';
                              });
                            },
                          ),
                          SizedBox(height: 20),
                          AppTextField(
                            hintText: "Password",
                            prefixIcon: Icons.lock,
                            obscureText: _obscureText,
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
                                '';
                              });
                            },
                          ),
                          SizedBox(height: 20),
                          AppTextField(
                            hintText: "Confirm Password",
                            obscureText: _obscureConfirmText,
                            suffiixIcon: IconButton(
                                icon: Icon(
                                  _obscureConfirmText
                                      ? Icons.visibility_off
                                      : Icons.visibility,
                                  color: Colors.grey[600],
                                ),
                                onPressed: () {
                                  setState(() {
                                    _toggleConfirm();
                                  });
                                }),
                            prefixIcon: Icons.lock,
                            keyboardType: TextInputType.visiblePassword,
                            controller: confirmController,
                            onChanged: (value) {
                              setState(() {
                                errorMessage =
                                '';
                              });
                            },
                          ),
                          SizedBox(height: 25),
                          isLoading
                              ? Center(
                            child: SizedBox(
                              width: 80,
                              child: LoadingIndicator(
                                indicatorType: Indicator.ballBeat,
                                colors: [
                                  Theme.of(context).primaryColor,
                                ],
                                strokeWidth: 2,
                                pathBackgroundColor:
                                Theme.of(context).primaryColor,
                              ),
                            ),
                          )
                              : CustomButton(
                            color: isSignUpButtonEnabled
                                ? AppColors.purplecolor
                                : AppColors.greycolor,
                            text: "Sign Up",
                            textStyle: AppStyles.white16,
                            onTap: () async {
                              // Only navigate if the button is enabled
                              if (emailController.text.isEmpty &&
                                  passwordController.text.isEmpty &&
                                  nameController.text.isEmpty &&
                                  confirmController.text.isEmpty) {
                                Get.snackbar(
                                  'Error',
                                  'Please enter all field',
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
                              } else if (nameController.text.isEmpty) {
                                Get.snackbar(
                                  'Error',
                                  'Please enter the name',
                                  backgroundColor: Colors.white,
                                  snackPosition: SnackPosition.TOP,
                                );
                              } else if (confirmController.text.isEmpty) {
                                Get.snackbar(
                                  'Error',
                                  'Please enter the password',
                                  backgroundColor: Colors.white,
                                  snackPosition: SnackPosition.TOP,
                                );
                              } else if (passwordController.text !=
                                  confirmController.text) {
                                Get.snackbar(
                                  'Error',
                                  'Passwords do not match',
                                  backgroundColor: Colors.white,
                                  snackPosition: SnackPosition.TOP,
                                );
                              } else {
                                setState(() {
                                  isLoading = true;
                                });
                                try {
                                  await registration();
                                } catch (error) {
                                } finally {
                                  setState(() {
                                    isLoading = false;
                                  });
                                }
                              }
                            },
                          ),
                          Padding(
                            padding: const EdgeInsets.only(right: 20),
                            child: AppText(
                              text: "\nAlready have an account? \t",
                              style: AppStyles.black13,
                              textSpans: [
                                TextSpan(
                                  text: "Sign In",
                                  style: AppStyles.black500,
                                  recognizer: TapGestureRecognizer()
                                    ..onTap = () {
                                      Get.to(SigIn());
                                      print("Sign in tapped");
                                    },
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Image.asset(
              "images/appthemeimage.png",
              fit: BoxFit.cover,
              height: 200,
            ),
          ],
        ),
      ),
    );
  }
}
