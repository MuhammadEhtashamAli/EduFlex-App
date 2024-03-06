import 'package:eduflex/utlis/color.dart';
import 'package:eduflex/widget/reuseHeader.dart';
import 'package:flutter/material.dart';

class KpkQuizPage extends StatefulWidget {
  @override
  _KpkQuizPageState createState() => _KpkQuizPageState();
}

class _KpkQuizPageState extends State<KpkQuizPage> {
  List<Question> questions = [
    Question("What is the capital of France?",
        ["Berlin", "Madrid", "Paris", "Rome"], 2),
    Question("Which planet is known as the Red Planet?",
        ["Earth", "Mars", "Venus", "Jupiter"], 1),
    Question("What is the largest ocean on Earth?",
        ["Atlantic", "Indian", "Arctic", "Pacific"], 3),
    Question("What is the capital of Japan?",
        ["Seoul", "Beijing", "Tokyo", "Bangkok"], 2),
    Question("Which programming language is Flutter based on?",
        ["Java", "Dart", "Swift", "Python"], 1),
    Question("Which programming language is Flutter based on?",
        ["Java", "Dart", "Swift", "Python"], 1),
    Question("Which programming language is Flutter based on?",
        ["Java", "Dart", "Swift", "Python"], 1),
    Question("Which programming language is Flutter based on?",
        ["Java", "Dart", "Swift", "Python"], 1),
    Question("Which programming language is Flutter based on?",
        ["Java", "Dart", "Swift", "Python"], 1),
    Question("Which programming language is Flutter based on?",
        ["Java", "Dart", "Swift", "Python"], 1),
  ];

  List<int?> userAnswers = List.filled(10, null);
  bool showResults = false;
  int correctAnswers = 0;
  int wrongAnswers = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            CustomHeaderStack(
              title: 'Quiz',
              subTitle: 'Important Topic Quiz',
            ),

            SizedBox(
              height: 20,
            ),
            Expanded(
              child: ListView.builder(
                itemCount: questions.length,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.only(left: 20.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          questions[index].questionText,
                          style: AppStyles.black16,
                        ),
                        ...List.generate(4, (optionIndex) {
                          return CheckboxListTile(
                            title: Text(questions[index].options[optionIndex]),
                            value: userAnswers[index] == optionIndex,
                            onChanged: (value) {
                              setState(() {
                                userAnswers[index] =
                                    value! ? optionIndex : null;
                              });
                            },
                          );
                        }),
                        SizedBox(height: 5.0),
                        // Adjust the height according to your preference
                      ],
                    ),
                  );
                },
              ),
            ),
            Container(
              height: 60, // Fixed height for the button container
              child: ElevatedButton(
                onPressed: () {
                  correctAnswers = 0;
                  wrongAnswers = 0;
                  for (int i = 0; i < questions.length; i++) {
                    if (userAnswers[i] == questions[i].correctIndex) {
                      correctAnswers++;
                    } else {
                      wrongAnswers++;
                    }
                  }
                  setState(() {
                    showResults = true;
                  });
                  // You can display the results or perform any other action here.
                  print('Correct Answers: $correctAnswers');
                  print('Wrong Answers: $wrongAnswers');
                },
                child: Text('Check Answers'),
              ),
            ),
            if (showResults)
              Padding(
                padding: EdgeInsets.all(10.0),
                child: Text(
                  'Correct Answers: $correctAnswers\nWrong Answers: $wrongAnswers',
                  style: TextStyle(fontSize: 18.0),
                ),
              ),
            SizedBox(height: 10.0),
            // Adjust the height according to your preference
          ],
        ),
      ),
    );
  }
}

class Question {
  String questionText;
  List<String> options;
  int correctIndex;

  Question(this.questionText, this.options, this.correctIndex);
}
