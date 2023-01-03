import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:quiz_app/quiz_categories/trivia/difficult/components/body_difficult_trivia_view.dart';
import 'question_controller_trivia/question_controller_difficult_trivia.dart';



class DifficultTriviaView extends StatelessWidget {
  const DifficultTriviaView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    QuestionControllerDifficultTrivia controller = Get.put(QuestionControllerDifficultTrivia());
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        actions: [
          TextButton(onPressed: controller.nextTrivia, child: const Text("Skip"))
        ],
      ),
      body: const BodyDifficultTriviaView(),
    );
  }
}
