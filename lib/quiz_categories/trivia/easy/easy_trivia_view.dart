import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:quiz_app/quiz_categories/trivia/easy/components/body_easy_trivia_view.dart';

import 'question_controller_trivia/question_controller_easy_trivia.dart';


class EasyTriviaView extends StatelessWidget {
  const EasyTriviaView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    QuestionControllerTrivia controller = Get.put(QuestionControllerTrivia());
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        actions: [
          TextButton(onPressed: controller.nextTrivia, child: const Text("Skip"))
        ],
      ),
      body: const BodyTriviaView(),
    );
  }
}
