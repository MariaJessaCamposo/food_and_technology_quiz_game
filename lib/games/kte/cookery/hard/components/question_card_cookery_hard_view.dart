import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:quiz_app/constants.dart';
import 'package:quiz_app/games/kte/cookery/hard/components/option_cookery_hard_view.dart';
import 'package:quiz_app/games/kte/cookery/hard/question_controller_trivia/question_controller_cookery_hard.dart';
import 'package:quiz_app/models/questions.dart';

class QuestionCardCookeryHardView extends StatelessWidget {
  const QuestionCardCookeryHardView({Key? key, required this.question})
      : super(key: key);

  final Question question;

  @override
  Widget build(BuildContext context) {
    QuestionControllerCookeryHard controller =
        Get.put(QuestionControllerCookeryHard());
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
            (index) => OptionCookeryHardView(
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
