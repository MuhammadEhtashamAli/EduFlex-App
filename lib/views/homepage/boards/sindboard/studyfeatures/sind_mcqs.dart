import 'package:eduflex/widget/reuseHeader.dart';
import 'package:flutter/material.dart';

import '../../../../../utlis/color.dart';
import '../../../../../widget/reuseabletext.dart';

class SIndMcqs extends StatefulWidget {
  const SIndMcqs({Key? key}) : super(key: key);

  @override
  State<SIndMcqs> createState() => _SIndMcqsState();
}

class _SIndMcqsState extends State<SIndMcqs> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CustomHeaderStack(
              title: 'MCQS',
              subTitle: 'Important Topic Mcqs',
            ),
            // const SizedBox(
            //   height: 20,
            // ),

            Expanded(
              child: SingleChildScrollView(
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      AppText(
                        text: '1.Select the word which is spelled correctly?',
                        style: AppStyles.black13,
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          AppText(
                            text: 'A. Benefited',
                            style: AppStyles.purple11,
                          ),
                          AppText(
                            text: 'B. Benefited',
                            style: AppStyles.black11,
                          ),
                          AppText(
                            text: 'C. Benefited',
                            style: AppStyles.black11,
                          ),
                          AppText(
                            text: 'D. Benefited',
                            style: AppStyles.black11,
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      AppText(
                        text: '2.Select the word which is spelled correctly?',
                        style: AppStyles.black13,
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          AppText(
                            text: 'A. Benefited',
                            style: AppStyles.purple11,
                          ),
                          AppText(
                            text: 'B. Benefited',
                            style: AppStyles.black11,
                          ),
                          AppText(
                            text: 'C. Benefited',
                            style: AppStyles.black11,
                          ),
                          AppText(
                            text: 'D. Benefited',
                            style: AppStyles.black11,
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      AppText(
                        text: '3.Select the word which is spelled correctly?',
                        style: AppStyles.black13,
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          AppText(
                            text: 'A. Benefited',
                            style: AppStyles.purple11,
                          ),
                          AppText(
                            text: 'B. Benefited',
                            style: AppStyles.black11,
                          ),
                          AppText(
                            text: 'C. Benefited',
                            style: AppStyles.black11,
                          ),
                          AppText(
                            text: 'D. Benefited',
                            style: AppStyles.black11,
                          ),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          AppText(
                            text: 'A. Benefited',
                            style: AppStyles.purple11,
                          ),
                          AppText(
                            text: 'B. Benefited',
                            style: AppStyles.black11,
                          ),
                          AppText(
                            text: 'C. Benefited',
                            style: AppStyles.black11,
                          ),
                          AppText(
                            text: 'D. Benefited',
                            style: AppStyles.black11,
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      AppText(
                        text: '4.Select the word which is spelled correctly?',
                        style: AppStyles.black13,
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          AppText(
                            text: 'A. Benefited',
                            style: AppStyles.purple11,
                          ),
                          AppText(
                            text: 'B. Benefited',
                            style: AppStyles.black11,
                          ),
                          AppText(
                            text: 'C. Benefited',
                            style: AppStyles.black11,
                          ),
                          AppText(
                            text: 'D. Benefited',
                            style: AppStyles.black11,
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      AppText(
                        text: '5.Select the word which is spelled correctly?',
                        style: AppStyles.black13,
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          AppText(
                            text: 'A. Benefited',
                            style: AppStyles.purple11,
                          ),
                          AppText(
                            text: 'B. Benefited',
                            style: AppStyles.black11,
                          ),
                          AppText(
                            text: 'C. Benefited',
                            style: AppStyles.black11,
                          ),
                          AppText(
                            text: 'D. Benefited',
                            style: AppStyles.black11,
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      AppText(
                        text: '6.Select the word which is spelled correctly?',
                        style: AppStyles.black13,
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          AppText(
                            text: 'A. Benefited',
                            style: AppStyles.purple11,
                          ),
                          AppText(
                            text: 'B. Benefited',
                            style: AppStyles.black11,
                          ),
                          AppText(
                            text: 'C. Benefited',
                            style: AppStyles.black11,
                          ),
                          AppText(
                            text: 'D. Benefited',
                            style: AppStyles.black11,
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      AppText(
                        text: '7.Select the word which is spelled correctly?',
                        style: AppStyles.black13,
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          AppText(
                            text: 'A. Benefited',
                            style: AppStyles.purple11,
                          ),
                          AppText(
                            text: 'B. Benefited',
                            style: AppStyles.black11,
                          ),
                          AppText(
                            text: 'C. Benefited',
                            style: AppStyles.black11,
                          ),
                          AppText(
                            text: 'D. Benefited',
                            style: AppStyles.black11,
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      AppText(
                        text: '8.Select the word which is spelled correctly?',
                        style: AppStyles.black13,
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          AppText(
                            text: 'A. Benefited',
                            style: AppStyles.purple11,
                          ),
                          AppText(
                            text: 'B. Benefited',
                            style: AppStyles.black11,
                          ),
                          AppText(
                            text: 'C. Benefited',
                            style: AppStyles.black11,
                          ),
                          AppText(
                            text: 'D. Benefited',
                            style: AppStyles.black11,
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      AppText(
                        text: '9.Select the word which is spelled correctly?',
                        style: AppStyles.black13,
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          AppText(
                            text: 'A. Benefited',
                            style: AppStyles.purple11,
                          ),
                          AppText(
                            text: 'B. Benefited',
                            style: AppStyles.black11,
                          ),
                          AppText(
                            text: 'C. Benefited',
                            style: AppStyles.black11,
                          ),
                          AppText(
                            text: 'D. Benefited',
                            style: AppStyles.black11,
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      AppText(
                        text: '10.Select the word which is spelled correctly?',
                        style: AppStyles.black13,
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          AppText(
                            text: 'A. Benefited',
                            style: AppStyles.purple11,
                          ),
                          AppText(
                            text: 'B. Benefited',
                            style: AppStyles.black11,
                          ),
                          AppText(
                            text: 'C. Benefited',
                            style: AppStyles.black11,
                          ),
                          AppText(
                            text: 'D. Benefited',
                            style: AppStyles.black11,
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      AppText(
                        text: '11.Select the word which is spelled correctly?',
                        style: AppStyles.black13,
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          AppText(
                            text: 'A. Benefited',
                            style: AppStyles.purple11,
                          ),
                          AppText(
                            text: 'B. Benefited',
                            style: AppStyles.black11,
                          ),
                          AppText(
                            text: 'C. Benefited',
                            style: AppStyles.black11,
                          ),
                          AppText(
                            text: 'D. Benefited',
                            style: AppStyles.black11,
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      AppText(
                        text: '12.Select the word which is spelled correctly?',
                        style: AppStyles.black13,
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          AppText(
                            text: 'A. Benefited',
                            style: AppStyles.purple11,
                          ),
                          AppText(
                            text: 'B. Benefited',
                            style: AppStyles.black11,
                          ),
                          AppText(
                            text: 'C. Benefited',
                            style: AppStyles.black11,
                          ),
                          AppText(
                            text: 'D. Benefited',
                            style: AppStyles.black11,
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      AppText(
                        text: '13.Select the word which is spelled correctly?',
                        style: AppStyles.black13,
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          AppText(
                            text: 'A. Benefited',
                            style: AppStyles.purple11,
                          ),
                          AppText(
                            text: 'B. Benefited',
                            style: AppStyles.black11,
                          ),
                          AppText(
                            text: 'C. Benefited',
                            style: AppStyles.black11,
                          ),
                          AppText(
                            text: 'D. Benefited',
                            style: AppStyles.black11,
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      AppText(
                        text: '14.Select the word which is spelled correctly?',
                        style: AppStyles.black13,
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          AppText(
                            text: 'A. Benefited',
                            style: AppStyles.purple11,
                          ),
                          AppText(
                            text: 'B. Benefited',
                            style: AppStyles.black11,
                          ),
                          AppText(
                            text: 'C. Benefited',
                            style: AppStyles.black11,
                          ),
                          AppText(
                            text: 'D. Benefited',
                            style: AppStyles.black11,
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      AppText(
                        text: '15.Select the word which is spelled correctly?',
                        style: AppStyles.black13,
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          AppText(
                            text: 'A. Benefited',
                            style: AppStyles.purple11,
                          ),
                          AppText(
                            text: 'B. Benefited',
                            style: AppStyles.black11,
                          ),
                          AppText(
                            text: 'C. Benefited',
                            style: AppStyles.black11,
                          ),
                          AppText(
                            text: 'D. Benefited',
                            style: AppStyles.black11,
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      AppText(
                        text: '16.Select the word which is spelled correctly?',
                        style: AppStyles.black13,
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          AppText(
                            text: 'A. Benefited',
                            style: AppStyles.purple11,
                          ),
                          AppText(
                            text: 'B. Benefited',
                            style: AppStyles.black11,
                          ),
                          AppText(
                            text: 'C. Benefited',
                            style: AppStyles.black11,
                          ),
                          AppText(
                            text: 'D. Benefited',
                            style: AppStyles.black11,
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      AppText(
                        text: '17.Select the word which is spelled correctly?',
                        style: AppStyles.black13,
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          AppText(
                            text: 'A. Benefited',
                            style: AppStyles.purple11,
                          ),
                          AppText(
                            text: 'B. Benefited',
                            style: AppStyles.black11,
                          ),
                          AppText(
                            text: 'C. Benefited',
                            style: AppStyles.black11,
                          ),
                          AppText(
                            text: 'D. Benefited',
                            style: AppStyles.black11,
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      AppText(
                        text: '18.Select the word which is spelled correctly?',
                        style: AppStyles.black13,
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          AppText(
                            text: 'A. Benefited',
                            style: AppStyles.purple11,
                          ),
                          AppText(
                            text: 'B. Benefited',
                            style: AppStyles.black11,
                          ),
                          AppText(
                            text: 'C. Benefited',
                            style: AppStyles.black11,
                          ),
                          AppText(
                            text: 'D. Benefited',
                            style: AppStyles.black11,
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      AppText(
                        text: '19.Select the word which is spelled correctly?',
                        style: AppStyles.black13,
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          AppText(
                            text: 'A. Benefited',
                            style: AppStyles.purple11,
                          ),
                          AppText(
                            text: 'B. Benefited',
                            style: AppStyles.black11,
                          ),
                          AppText(
                            text: 'C. Benefited',
                            style: AppStyles.black11,
                          ),
                          AppText(
                            text: 'D. Benefited',
                            style: AppStyles.black11,
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      AppText(
                        text: '10.Select the word which is spelled correctly?',
                        style: AppStyles.black13,
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          AppText(
                            text: 'A. Benefited',
                            style: AppStyles.purple11,
                          ),
                          AppText(
                            text: 'B. Benefited',
                            style: AppStyles.black11,
                          ),
                          AppText(
                            text: 'C. Benefited',
                            style: AppStyles.black11,
                          ),
                          AppText(
                            text: 'D. Benefited',
                            style: AppStyles.black11,
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
