import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:quiz_app/constants.dart';
import 'package:quiz_app/quiz_categories/food_microbiology/components/progress_bar_food_microbiology_view.dart';
import 'package:quiz_app/quiz_categories/food_microbiology/components/question_card_food_microbiology_view.dart';
import 'package:quiz_app/quiz_categories/food_microbiology/question_controller_trivia/question_controller_food_microbiology.dart';

class BodyFoodMicrobiologyView extends StatelessWidget {
  const BodyFoodMicrobiologyView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    QuestionControllerFoodMicrobiology questionController =
        Get.put(QuestionControllerFoodMicrobiology());
    return Stack(
      children: [
        SvgPicture.asset("lib/assets/icons/bg.svg", fit: BoxFit.fill),
        SafeArea(
            child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Padding(
                padding: EdgeInsets.symmetric(horizontal: kDefaultPadding),
                child: ProgressBarFoodMicrobiology()),
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
                            "/${questionController.foodMicrobiologyQuestions.length}",
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
                itemCount: questionController.foodMicrobiologyQuestions.length,
                itemBuilder: (context, index) =>
                    QuestionCardFoodMicrobiologyView(
                        question: questionController
                            .foodMicrobiologyQuestions[index]),
              ),
            ),
          ],
        ))
      ],
    );
  }
}
