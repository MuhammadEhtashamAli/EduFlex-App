      import 'package:eduflex/widget/apptextfield.dart';
import 'package:eduflex/widget/coustoumbutton.dart';
import 'package:eduflex/widget/reuseHeader.dart';
import 'package:flutter/material.dart';
import '../../utlis/color.dart';
import '../../widget/appdropdown.dart';

class Profile extends StatefulWidget {
  const Profile({Key? key}) : super(key: key);

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              CustomHeaderStack(
                title: 'Profile',
                subTitle: 'Eduflex',
              ),
              SizedBox(
                height: 30,
              ),
              AppTextField(
                hintText: "Email / Phone no",
                applyLeftPadding: true,
                keyboardType: TextInputType.emailAddress,
                //controller: myTextController,
                onChanged: (value) {
                  // Handle text field changes
                },
              ),
              SizedBox(
                height: 20,
              ),
              AppTextField(
                hintText: "First name",
                applyLeftPadding: true,
                keyboardType: TextInputType.emailAddress,
                //controller: myTextController,
                onChanged: (value) {
                  // Handle text field changes
                },
              ),
              SizedBox(
                height: 20,
              ),
              AppTextField(
                hintText: "Last name",
                applyLeftPadding: true,
                keyboardType: TextInputType.emailAddress,
                //controller: myTextController,
                onChanged: (value) {
                  // Handle text field changes
                },
              ),
              SizedBox(
                height: 20,
              ),
              AppDropdown(
                hintText: 'Gender',
                options: ['Male', 'Female', 'Other'],
                onChanged: (value) {},
                dropdownIcon: Icons.keyboard_arrow_down_outlined,
              ),
              SizedBox(
                height: 20,
              ),
              AppTextField(
                hintText: "Phone no",
                applyLeftPadding: true,
                keyboardType: TextInputType.number,
                //controller: myTextController,
                onChanged: (value) {
                  // Handle text field changes
                },
              ),
              SizedBox(
                height: 20,
              ),
              AppTextField(
                hintText: "Country",
                applyLeftPadding: true,
                keyboardType: TextInputType.emailAddress,
                //controller: myTextController,
                onChanged: (value) {
                  // Handle text field changes
                },
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    width: 128,
                    child: AppTextField(
                      hintText: "City",
                      applyLeftPadding: true,
                      keyboardType: TextInputType.emailAddress,
                      //controller: myTextController,
                      onChanged: (value) {
                        // Handle text field changes
                      },
                    ),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Container(
                    width: 132,
                    child: AppTextField(
                      hintText: "Postal code",
                      applyLeftPadding: true,
                      keyboardType: TextInputType.emailAddress,
                      //controller: myTextController,
                      onChanged: (value) {
                        // Handle text field changes
                      },
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 20,
              ),
              AppTextField(
                hintText: "Address",
                applyLeftPadding: true,
                keyboardType: TextInputType.emailAddress,
                //controller: myTextController,
                onChanged: (value) {
                  // Handle text field changes
                },
              ),
              SizedBox(
                height: 20,
              ),
              AppTextField(
                hintText: "Pin Location",
                applyLeftPadding: true,
                suffixIcon: Icons.location_on,
                keyboardType: TextInputType.emailAddress,
                //controller: myTextController,
                onChanged: (value) {
                  // Handle text field changes
                },
              ),
              SizedBox(
                height: 20,
              ),
              CustomButton(
                color: AppColors.purplecolor,
                text: "Submit",
                textStyle: AppStyles.white16,
                onTap: () {},
              ),
              SizedBox(
                height: 20,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
