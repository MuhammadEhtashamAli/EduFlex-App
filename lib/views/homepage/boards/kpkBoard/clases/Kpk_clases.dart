
import 'package:eduflex/views/homepage/boards/fedralboard/clases/subject_selection.dart';
import 'package:eduflex/widget/reuseHeader.dart';
import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/get_navigation.dart';

import '../../../../../widget/categorycontaineer.dart';

class KpkClasses extends StatelessWidget {
  const KpkClasses({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            CustomHeaderStack(
              title: 'Kpk Board',
              subTitle: 'In Which Class You Are!',
            ),
            SizedBox(
              height: 40,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                CustomCategoryContainer(
                  imagePath: 'images/class09.png',
                  categoryName: 'Class 9',
                  onTap: () {
                    // Get.to(SindHomePage());
                    Get.to(FSubject9Screen());
                  },
                ),
                CustomCategoryContainer(
                  imagePath: 'images/class10.png',
                  categoryName: 'Class 10',
                  onTap: () {
                    Get.to(FSubject10Screen());

                    // Get.to(SindHomePage());
                  },
                ),
              ],
            ),
            SizedBox(
              height: 25,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                CustomCategoryContainer(
                  imagePath: 'images/class11.png',
                  categoryName: 'Class 11',
                  onTap: () {
                    Get.to(FSubject11Screen());

                    // Get.to(SindHomePage());
                  },
                ),
                CustomCategoryContainer(
                  imagePath: 'images/class12.png',
                  categoryName: 'Class 12',
                  onTap: () {
                    Get.to(FSubject12Screen());

                    // Get.to(SindHomePage());
                  },
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
