import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:quiz_app/constants.dart';
import 'package:quiz_app/models/questions.dart';
import 'package:quiz_app/quiz_categories/enzyme_technology/components/option_enzyme_technology_view.dart';
import 'package:quiz_app/quiz_categories/enzyme_technology/question_controller_trivia/question_controller_enzyme_technology.dart';

class QuestionCardEnzymeTechnologyView extends StatelessWidget {
  const QuestionCardEnzymeTechnologyView({Key? key, required this.question})
      : super(key: key);

  final Question question;

  @override
  Widget build(BuildContext context) {
    QuestionControllerEnzymeTechnology controller =
        Get.put(QuestionControllerEnzymeTechnology());
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
            (index) => OptionEnzymeTechnologyView(
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
