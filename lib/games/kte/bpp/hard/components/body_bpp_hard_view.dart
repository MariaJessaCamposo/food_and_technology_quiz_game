import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:quiz_app/constants.dart';
import 'package:quiz_app/games/kte/bpp/hard/components/progress_bar_bpp_hard_view.dart';
import 'package:quiz_app/games/kte/bpp/hard/components/question_card_bpp_hard_view.dart';
import 'package:quiz_app/games/kte/bpp/hard/question_controller_trivia/question_controller_bppHard.dart';

class BodyBppHardView extends StatelessWidget {
  const BodyBppHardView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    QuestionControllerBppHard questionController =
        Get.put(QuestionControllerBppHard());
    return Stack(
      children: [
        SvgPicture.asset("lib/assets/icons/bg.svg", fit: BoxFit.fill),
        SafeArea(
            child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Padding(
                padding: EdgeInsets.symmetric(horizontal: kDefaultPadding),
                child: ProgressBarBppHard()),
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
                        text: "/${questionController.bppHardQuestions.length}",
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
                itemCount: questionController.bppHardQuestions.length,
                itemBuilder: (context, index) => QuestionCardBppHardView(
                    question: questionController.bppHardQuestions[index]),
              ),
            ),
          ],
        ))
      ],
    );
  }
}
