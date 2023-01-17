import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:quiz_app/games/kte/cookery/difficult/components/body_cookery_difficult_view.dart';
import 'package:quiz_app/games/kte/cookery/difficult/question_controller_trivia/question_controller_cookery_difficult.dart';

class CookeryDifficultView extends StatelessWidget {
  const CookeryDifficultView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    QuestionControllerCookeryDifficult controller =
        Get.put(QuestionControllerCookeryDifficult());
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
      body: const BodyCookeryDifficultView(),
    );
  }
}
