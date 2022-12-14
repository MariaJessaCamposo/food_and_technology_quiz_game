import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:quiz_app/constants.dart';
import 'package:quiz_app/models/Questions.dart';
import 'package:quiz_app/quiz_categories/trivia/easy/components/option_easyTrivia_view.dart';
import 'package:quiz_app/quiz_categories/trivia/easy/question_controller_trivia/question_controller_easyTrivia.dart';

class QuestionCardTriviaView extends StatelessWidget {
  const QuestionCardTriviaView({Key? key, required this.question}) : super(key: key);

  final Question question;
  @override
  Widget build(BuildContext context) {
    QuestionControllerTrivia controller = Get.put(QuestionControllerTrivia());
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: kDefaultPadding),
      padding: const EdgeInsets.all(kDefaultPadding),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(25),
      ),
      child: Column(
        children: [
          Text(
            question.question,
            style: Theme.of(context)
                .textTheme
                .headline6
                ?.copyWith(color: kBlackColor),
            // .copyWith(color: kBlackColor),
          ),
          const SizedBox(height: kDefaultPadding / 2),
          ...List.generate(
            // Random().nextInt(question.options.length),
            question.options.length,
                (index) => OptionTriviaView(
              index: index,
              text: question.options[index],
              press: () => controller.checkAns(question, index),
            ),
          ),
        ],
      ),
    );
  }
}
