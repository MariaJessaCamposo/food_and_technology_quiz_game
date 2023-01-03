import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:quiz_app/constants.dart';
import 'package:quiz_app/models/questions.dart';
import 'package:quiz_app/quiz_categories/kte/bpp/difficult/components/option_bpp_difficult_view.dart';
import 'package:quiz_app/quiz_categories/kte/bpp/difficult/question_controller_trivia/question_controller_bpp_difficult.dart';

class QuestionCardBppDifficultView extends StatelessWidget {
  const QuestionCardBppDifficultView({Key? key, required this.question}) : super(key: key);

  final Question question;
  @override
  Widget build(BuildContext context) {
    QuestionControllerBppDifficult controller = Get.put(QuestionControllerBppDifficult());
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
                (index) => OptionBppDifficultView(
              index: index,
              text: question.options[index],
              press: () =>
                  controller.checkAns(question, index),
            ),
          ),
        ],
      ),
    );
  }
}
