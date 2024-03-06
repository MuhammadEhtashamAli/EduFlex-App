// ignore_for_file: prefer_const_constructors

import 'package:eduflex/utlis/color.dart';
import 'package:eduflex/widget/reuseHeader.dart';
import 'package:flutter/material.dart';

import '../sind_Board_home.dart';

class Subject9Screen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          SizedBox(
            height: 30,
          ),
          CustomHeaderStack(title: "CLASS IX", subTitle: "Select the Subject"),
          Expanded(
            child: SingleChildScrollView(
              child: Center(
                child: Column(
                  children: [
                    SizedBox(
                      height: 40,
                    ),
                    Column(
                      children: [
                        SubjectButton(subjectName: 'MATH'),
                        SubjectButton(subjectName: 'SCIENCE'),
                        SubjectButton(subjectName: 'ENGLISH'),
                        SubjectButton(subjectName: 'URDU'),
                        SubjectButton(subjectName: 'COMPUTER'),
                        SubjectButton(subjectName: 'PAK STUDIES'),
                        SubjectButton(subjectName: 'SINDHI'),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class Subject10Screen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          SizedBox(
            height: 30,
          ),
          CustomHeaderStack(title: "CLASS X", subTitle: "Select the Subject"),
          Expanded(
            child: SingleChildScrollView(
              child: Center(
                child: Column(
                  children: [
                    SizedBox(
                      height: 40,
                    ),
                    Column(
                      children: [
                        SubjectButton(subjectName: 'MATH'),
                        SubjectButton(subjectName: 'SCIENCE'),
                        SubjectButton(subjectName: 'ENGLISH'),
                        SubjectButton(subjectName: 'URDU'),
                        SubjectButton(subjectName: 'COMPUTER'),
                        SubjectButton(subjectName: 'PAK STUDIES'),
                        SubjectButton(subjectName: 'SINDHI'),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class Subject11Screen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          SizedBox(
            height: 30,
          ),
          CustomHeaderStack(title: "CLASS XI", subTitle: "Select the Subject"),
          Expanded(
            child: SingleChildScrollView(
              child: Center(
                child: Column(
                  children: [
                    SizedBox(
                      height: 40,
                    ),
                    Column(
                      children: [
                        SubjectButton(subjectName: 'MATH'),
                        SubjectButton(subjectName: 'SCIENCE'),
                        SubjectButton(subjectName: 'ENGLISH'),
                        SubjectButton(subjectName: 'URDU'),
                        SubjectButton(subjectName: 'COMPUTER'),
                        SubjectButton(subjectName: 'PAK STUDIES'),
                        SubjectButton(subjectName: 'SINDHI'),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class Subject12Screen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          SizedBox(
            height: 30,
          ),
          CustomHeaderStack(title: "CLASS XII", subTitle: "Select the Subject"),
          Expanded(
            child: SingleChildScrollView(
              child: Center(
                child: Column(
                  children: [
                    SizedBox(
                      height: 40,
                    ),
                    Column(
                      children: [
                        SubjectButton(subjectName: 'MATH'),
                        SubjectButton(subjectName: 'SCIENCE'),
                        SubjectButton(subjectName: 'ENGLISH'),
                        SubjectButton(subjectName: 'URDU'),
                        SubjectButton(subjectName: 'COMPUTER'),
                        SubjectButton(subjectName: 'PAK STUDIES'),
                        SubjectButton(subjectName: 'SINDHI'),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class SubjectButton extends StatelessWidget {
  final String subjectName;

  SubjectButton({required this.subjectName});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        // Navigate to the screen for the selected subject
        Navigator.push(
          context,
          MaterialPageRoute(
              builder: (context) => SindHomePage(subjectName: subjectName)),
        );
      },
      child: Container(
        width: 300,
        height: 60,
        margin: EdgeInsets.all(10),
        padding: EdgeInsets.all(10),
        decoration: BoxDecoration(
          color: Color(0xff8B3C7F),
          borderRadius:
              BorderRadius.circular(20), // Set radius to 20 for all sides
        ),
        child: Center(
          child: Text(
            subjectName,
            style: AppStyles.white16,
          ),
        ),
      ),
    );
  }
}
