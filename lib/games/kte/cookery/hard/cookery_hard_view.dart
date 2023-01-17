import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:quiz_app/games/kte/cookery/hard/components/body_cookery_hard_view.dart';
import 'package:quiz_app/games/kte/cookery/hard/question_controller_trivia/question_controller_cookery_hard.dart';

class CookeryHardView extends StatelessWidget {
  const CookeryHardView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    QuestionControllerCookeryHard controller =
        Get.put(QuestionControllerCookeryHard());
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        actions: [
          TextButton(
              onPressed: controller.nextTrivia, child: const Text("Skip"))
        ],
      ),
      body: const BodyCookeryHardView(),
    );
  }
}
