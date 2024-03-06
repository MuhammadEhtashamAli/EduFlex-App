// ignore_for_file: prefer_const_constructors

import 'package:eduflex/views/homepage/boards/cambridgeboard/clases/Cambridge_clases.dart';
import 'package:eduflex/views/homepage/boards/kpkBoard/clases/Kpk_clases.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../../utlis/color.dart';
import '../../widget/reuseCard.dart';
import '../../widget/reuseabletext.dart';
import 'boards/fedralboard/clases/federal_clases.dart';
import 'boards/punjabBoard/clases/Punjab_clases.dart';
import 'boards/sindboard/clases/sind_clases.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Stack(
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Image.asset(
                      "images/apptheme3.png",
                      height: 300,
                      fit: BoxFit.cover, // Cover the width completely
                    ),
                  ],
                ),
                Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        height: 160,
                        width: 160,
                        child: Image.asset("images/logo.png"),
                      ),
                      AppText(
                        text: 'EDUFLEX',
                        style: AppStyles.white24,
                      ),
                    ],
                  ),
                ),
              ],
            ),
            Expanded(
              child: SingleChildScrollView(
                child: Center(
                    child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: 20,
                    ),
                    Padding(
                        padding: EdgeInsets.only(left: 25),
                        child: AppText(
                          text: 'First Select Your Board',
                          style: AppStyles.black20,
                        )),
                    SizedBox(
                      height: 20,
                    ),
                    CustomCard(
                      text: 'Sindh Board',
                      onTap: () {
                        Get.to(SindClases());
                      },
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    CustomCard(
                      text: 'Federal Board',
                      onTap: () {
                        Get.to(federalClasses());
                      },
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    CustomCard(
                      text: 'Punjab Board',
                      onTap: () {
                        Get.to(PunjabClasses());
                      },
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    CustomCard(
                      text: 'KPK Board',
                      onTap: () {
                        Get.to(KpkClasses());
                      },
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    CustomCard(
                      text: 'Cambridge Board',
                      onTap: () {
                        Get.to(CambridgeClasses());
                      },
                    ),
                  ],
                )),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
