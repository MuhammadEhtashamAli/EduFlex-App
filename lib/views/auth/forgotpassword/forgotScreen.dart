import 'package:eduflex/utlis/color.dart';
import 'package:eduflex/widget/reuseabletext.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import '../../../widget/apptextfield.dart';
import '../../../widget/coustoumbutton.dart';

class ForgotScreen extends StatefulWidget {
  const ForgotScreen({Key? key}) : super(key: key);

  @override
  State<ForgotScreen> createState() => _ForgotScreenState();
}

class _ForgotScreenState extends State<ForgotScreen> {
  TextEditingController email = TextEditingController();

  TextEditingController password = TextEditingController();

  final formKey = GlobalKey<FormState>();

  bool showPass = true;

  bool isLoading = false;

  @override
  void initState() {
    super.initState();
  }

  resetPassword() async {
    try {
      await FirebaseAuth.instance.sendPasswordResetEmail(email: email.text);
      // ScaffoldMessenger.of(context).
      Fluttertoast.showToast(msg: 'Password Reset Email has been sent !');
    } on FirebaseAuthException catch (e) {
      if (e.code == 'user-not-found') {
        Fluttertoast.showToast(msg: 'No user found!');
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    SizedBox(
                      height: 40,
                    ),
                    Image.asset("images/appthemeimage1.png"),
                    AppText(
                      text: 'Forgot Password',
                      style: AppStyles.white24,
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    AppTextField(
                      hintText: "Email",
                      prefixIcon: Icons.person,
                      keyboardType: TextInputType.emailAddress,
                      //controller: myTextController,
                      onChanged: (value) {
                        // Handle text field changes
                      },
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    CustomButton(
                      color: AppColors.purplecolor,
                      text: "Continue",
                      textStyle: AppStyles.white16,
                      onTap: () {
                        resetPassword();
                      },
                    ),
                  ],
                ),
              ),
            ),
            Image.asset("images/appthemeimage.png"),
          ],
        ),
      ),
    );
  }
}
