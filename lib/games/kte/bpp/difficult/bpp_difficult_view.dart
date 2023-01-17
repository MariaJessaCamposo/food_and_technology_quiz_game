import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:quiz_app/games/kte/bpp/difficult/components/body_bpp_difficult_view.dart';
import 'package:quiz_app/games/kte/bpp/difficult/question_controller_trivia/question_controller_bpp_difficult.dart';

class BppDifficultView extends StatelessWidget {
  const BppDifficultView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    QuestionControllerBppDifficult controller =
        Get.put(QuestionControllerBppDifficult());
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
      body: const BodyBppDifficultView(),
    );
  }
}
