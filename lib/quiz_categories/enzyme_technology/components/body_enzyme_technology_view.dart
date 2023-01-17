import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:quiz_app/constants.dart';
import 'package:quiz_app/quiz_categories/enzyme_technology/components/progress_bar_enzyme_technology_view.dart';
import 'package:quiz_app/quiz_categories/enzyme_technology/components/question_card_enzyme_technology_view.dart';
import 'package:quiz_app/quiz_categories/enzyme_technology/question_controller_trivia/question_controller_enzyme_technology.dart';

class BodyEnzymeTechnologyView extends StatelessWidget {
  const BodyEnzymeTechnologyView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    QuestionControllerEnzymeTechnology questionController =
        Get.put(QuestionControllerEnzymeTechnology());
    return Stack(
      children: [
        SvgPicture.asset("lib/assets/icons/bg.svg", fit: BoxFit.fill),
        SafeArea(
            child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Padding(
                padding: EdgeInsets.symmetric(horizontal: kDefaultPadding),
                child: ProgressBarEnzymeTechnologyView()),
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
                            "/${questionController.enzymeTechnologyQuestions.length}",
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
                itemCount: questionController.enzymeTechnologyQuestions.length,
                itemBuilder: (context, index) =>
                    QuestionCardEnzymeTechnologyView(
                        question: questionController
                            .enzymeTechnologyQuestions[index]),
              ),
            ),
          ],
        ))
      ],
    );
  }
}
