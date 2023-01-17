import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:quiz_app/constants.dart';
import 'package:quiz_app/quiz_categories/food_hygiene_and_sanitation/components/progress_bar_food_hygiene_and_sanitation_view.dart';
import 'package:quiz_app/quiz_categories/food_hygiene_and_sanitation/components/question_card_food_hygiene_and_sanitation_view.dart';
import 'package:quiz_app/quiz_categories/food_hygiene_and_sanitation/question_controller/question_controller_food_hygiene_and_sanitation.dart';

class BodyFoodHSView extends StatelessWidget {
  const BodyFoodHSView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    QuestionControllerFoodHS questionController =
        Get.put(QuestionControllerFoodHS());
    return Stack(
      children: [
        SvgPicture.asset("lib/assets/icons/bg.svg", fit: BoxFit.fill),
        SafeArea(
            child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Padding(
                padding: EdgeInsets.symmetric(horizontal: kDefaultPadding),
                child: ProgressBarFoodHS()),
            const SizedBox(height: kDefaultPadding),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding),
              child: Obx(
                () => Text.rich(
                  TextSpan(
                    text: "Question ${questionController.questionNumber.value}",
                    style: Theme.of(context)
                        .textTheme
                        .headline4
                        ?.copyWith(color: kSecondaryColor),
                    // .copyWith(color: kSecondaryColor),
                    children: [
                      TextSpan(
                        text:
                            "/${questionController.foodHygieneAndSanitationQuestions.length}",
                        style: Theme.of(context)
                            .textTheme
                            .headline5
                            ?.copyWith(color: kSecondaryColor),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            const Divider(thickness: 1.5),
            const SizedBox(height: kDefaultPadding),
            Expanded(
              child: PageView.builder(
                // Block swipe to next qn
                physics: const NeverScrollableScrollPhysics(),
                controller: questionController.pageController,
                onPageChanged: questionController.updateTheQnNum,
                itemCount:
                    questionController.foodHygieneAndSanitationQuestions.length,
                itemBuilder: (context, index) => QuestionCardFoodHSView(
                    question: questionController
                        .foodHygieneAndSanitationQuestions[index]),
              ),
            ),
          ],
        ))
      ],
    );
  }
}
