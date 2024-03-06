import 'package:eduflex/views/homepage/boards/cambridgeboard/studyfeatures/Cambridge_tutorails/Cambridge_turtorails.dart';
import 'package:eduflex/views/homepage/boards/fedralboard/studyfeatures/federal_mcqs.dart';
import 'package:eduflex/views/homepage/boards/fedralboard/studyfeatures/federal_quiz.dart';
import 'package:eduflex/views/homepage/pdfUploadGet/pdfUploadScreen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/get_navigation.dart';
import '../../../../widget/categorycontaineer.dart';
import '../../../../widget/reuseHeader.dart';

class CambridgeHomePage extends StatefulWidget {
  final String subjectName;

  const CambridgeHomePage({required this.subjectName}) : super();

  @override
  State<CambridgeHomePage> createState() => _CambridgeHomePageState();
}

class _CambridgeHomePageState extends State<CambridgeHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            CustomHeaderStack(
              title: 'Cambridge Board',
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
                            Get.to(CambridgeTurtoials());
                          },
                        ),
                        CustomCategoryContainer(
                          imagePath: 'images/quiz1.jpg',
                          categoryName: 'Quiz',
                          onTap: () {
                            Get.to(FederalQuizPage());
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
                            Get.to(FederalMcqs());
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
