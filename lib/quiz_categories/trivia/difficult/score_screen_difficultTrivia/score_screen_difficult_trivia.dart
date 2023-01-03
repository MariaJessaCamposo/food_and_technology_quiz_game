import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:quiz_app/constants.dart';
import 'package:quiz_app/quiz_categories/trivia/difficult/question_controller_trivia/question_controller_difficult_trivia.dart';

class ScoreScreenDifficultTrivia extends StatelessWidget {
  const ScoreScreenDifficultTrivia({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    QuestionControllerDifficultTrivia qnController =
        Get.put(QuestionControllerDifficultTrivia());
    return Scaffold(
      body: Stack(
        fit: StackFit.expand,
        children: [
          SvgPicture.asset("lib/assets/icons/bg.svg", fit: BoxFit.fill),
          Column(
            children: [
              const Spacer(flex: 3),
              Text(
                "Score",
                style: Theme.of(context)
                    .textTheme
                    .headline3
                    ?.copyWith(color: kSecondaryColor),
              ),
              const Spacer(),
              Text(
                // "${qnController.numOfCorrectAns * 10}/${qnController.questions.length * 10}",
                "${qnController.numOfCorrectAns * 10}/${qnController.difficultTriviaQuestions.length * 10}",
                style: Theme.of(context)
                    .textTheme
                    .headline4
                    ?.copyWith(color: kSecondaryColor),
              ),
              const Spacer(flex: 3),
            ],
          )
        ],
      ),
    );
  }
}
