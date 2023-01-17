import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:quiz_app/constants.dart';
import 'package:quiz_app/games/kte/cookery/difficult/components/option_cookery_difficult_view.dart';
import 'package:quiz_app/models/questions.dart';

import '../question_controller_trivia/question_controller_cookery_difficult.dart';

class QuestionCardCookeryDifficultView extends StatelessWidget {
  const QuestionCardCookeryDifficultView({Key? key, required this.question})
      : super(key: key);

  final Question question;

  @override
  Widget build(BuildContext context) {
    QuestionControllerCookeryDifficult controller =
        Get.put(QuestionControllerCookeryDifficult());
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
            (index) => OptionCookeryDifficultView(
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
