import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:quiz_app/constants.dart';
import 'package:quiz_app/models/questions.dart';
import 'package:quiz_app/quiz_categories/nutrition_and_health/components/option_nutrition_and_health_view.dart';
import 'package:quiz_app/quiz_categories/nutrition_and_health/question_controller_trivia/question_controller_nutrition_and_health.dart';

class QuestionCardNutritionAndHealthView extends StatelessWidget {
  const QuestionCardNutritionAndHealthView({Key? key, required this.question})
      : super(key: key);

  final Question question;

  @override
  Widget build(BuildContext context) {
    QuestionControllerNutritionAndHealth controller =
        Get.put(QuestionControllerNutritionAndHealth());
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
            (index) => OptionNutritionAndHealthView(
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
