import 'package:eduflex/views/homepage/boards/sindboard/studyfeatures/sind_mcqs.dart';
import 'package:eduflex/views/homepage/boards/sindboard/studyfeatures/sind_quiz.dart';
import 'package:eduflex/views/homepage/boards/sindboard/studyfeatures/sind_tutorails/sind_turtorails.dart';
import 'package:eduflex/views/homepage/pdfUploadGet/pdfUploadScreen.dart';
import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/get_navigation.dart';
import '../../../../widget/categorycontaineer.dart';
import '../../../../widget/reuseHeader.dart';

class SindHomePage extends StatefulWidget {
  final String subjectName;

  const SindHomePage({required this.subjectName}) : super();

  @override
  State<SindHomePage> createState() => _SindHomePageState();
}

class _SindHomePageState extends State<SindHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            CustomHeaderStack(
              title: 'Sindh Board',
              subTitle: 'What do you want Study?',
            ),
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        CustomCategoryContainer(
                          imagePath: 'images/tut.jpg',
                          categoryName: 'Tutorials',
                          onTap: () {
                            Get.to(SindTortails());
                          },
                        ),
                        CustomCategoryContainer(
                          imagePath: 'images/quiz1.jpg',
                          categoryName: 'Quiz',
                          onTap: () {
                            Get.to(QuizPage());
                          },
                        ),
                      ],
                    ),
                    SizedBox(
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
                            Get.to(SIndMcqs());
                          },
                        ),
                      ],
                    ),
                    SizedBox(
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
