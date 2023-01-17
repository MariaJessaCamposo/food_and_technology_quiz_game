import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:quiz_app/constants.dart';
import 'package:quiz_app/games/kte/cookery/hard/components/progress_bar_cookery_hard_view.dart';
import 'package:quiz_app/games/kte/cookery/hard/components/question_card_cookery_hard_view.dart';
import 'package:quiz_app/games/kte/cookery/hard/question_controller_trivia/question_controller_cookery_hard.dart';

class BodyCookeryHardView extends StatelessWidget {
  const BodyCookeryHardView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    QuestionControllerCookeryHard questionController =
        Get.put(QuestionControllerCookeryHard());
    return Stack(
      children: [
        SvgPicture.asset("lib/assets/icons/bg.svg", fit: BoxFit.fill),
        SafeArea(
            child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Padding(
                padding: EdgeInsets.symmetric(horizontal: kDefaultPadding),
                child: ProgressBarCookeryHard()),
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
                            "/${questionController.cookeryHardQuestions.length}",
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
                itemCount: questionController.cookeryHardQuestions.length,
                itemBuilder: (context, index) => QuestionCardCookeryHardView(
                    question: questionController.cookeryHardQuestions[index]),
              ),
            ),
          ],
        ))
      ],
    );
  }
}
