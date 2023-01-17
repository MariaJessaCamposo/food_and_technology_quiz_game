import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:quiz_app/games/trivia/hard/components/body_hard_trivia_view.dart';
import 'package:quiz_app/games/trivia/hard/question_controller_trivia/question_controller_hard_trivia.dart';

class HardTriviaView extends StatelessWidget {
  const HardTriviaView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    QuestionControllerHardTrivia controller =
        Get.put(QuestionControllerHardTrivia());
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
      body: const BodyHardTriviaView(),
    );
  }
}
