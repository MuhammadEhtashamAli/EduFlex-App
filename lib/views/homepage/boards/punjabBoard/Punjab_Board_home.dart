import 'package:eduflex/views/homepage/boards/punjabBoard/studyfeatures/Punjab_mcqs.dart';
import 'package:eduflex/views/homepage/boards/punjabBoard/studyfeatures/Punjab_quiz.dart';
import 'package:eduflex/views/homepage/boards/punjabBoard/studyfeatures/Punjab_tutorails/Punjab_turtorails.dart';
import 'package:eduflex/views/homepage/pdfUploadGet/pdfUploadScreen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/get_navigation.dart';
import '../../../../widget/categorycontaineer.dart';
import '../../../../widget/reuseHeader.dart';

class PunjabHomePage extends StatefulWidget {
  final String subjectName;

  const PunjabHomePage({super.key, required this.subjectName});

  @override
  State<PunjabHomePage> createState() => _PunjabHomePageState();
}

class _PunjabHomePageState extends State<PunjabHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            CustomHeaderStack(
              title: 'Kpk Board',
              subTitle: 'What do you want Study?',
            ),
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    const SizedBox(
                      height: 25,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        CustomCategoryContainer(
                          imagePath: 'images/tut.jpg',
                          categoryName: 'Tutorials',
                          onTap: () {
                            Get.to(const PunjabTortails());
                          },
                        ),
                        CustomCategoryContainer(
                          imagePath: 'images/quiz1.jpg',
                          categoryName: 'Quiz',
                          onTap: () {
                            Get.to(PunjabQuizPage());
                          },
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        CustomCategoryContainer(
                          imagePath: 'images/note.jpg',
                          categoryName: 'Notes',
                          onTap: () {
                            Get.to(UploadGetPdf(
                              path: "islamiat",
                            ));
                          },
                        ),
                        CustomCategoryContainer(
                          imagePath: 'images/mcqss.jpg',
                          categoryName: 'Mcqs',
                          onTap: () {
                            Get.to(const PunjabMcqs());
                          },
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        CustomCategoryContainer(
                          imagePath: 'images/book.jpg',
                          categoryName: 'Books',
                          onTap: () {
                            Get.to(UploadGetPdf(
                              path: "islamiat",
                            ));
                          },
                        ),
                        CustomCategoryContainer(
                          imagePath: 'images/pastpaper.jpg',
                          categoryName: 'Past Papers',
                          onTap: () {
                            Get.to(UploadGetPdf(
                              path: "islamiat",
                            ));
                          },
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
