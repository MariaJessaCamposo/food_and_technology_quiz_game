import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:quiz_app/quiz_categories/kte/bpp/hard/components/body_bpp_hard_view.dart';
import 'package:quiz_app/quiz_categories/kte/bpp/hard/question_controller_trivia/question_controller_bppHard.dart';

class BppHardView extends StatelessWidget {
  const BppHardView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    QuestionControllerBppHard controller = Get.put(QuestionControllerBppHard());
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        actions: [
          TextButton(onPressed: controller.nextTrivia, child: const Text("Skip"))
        ],
      ),
      body: const BodyBppHardView(),
    );
  }
}
