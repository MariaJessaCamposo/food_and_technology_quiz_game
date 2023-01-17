import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:quiz_app/quiz_categories/enzyme_technology/components/body_enzyme_technology_view.dart';
import 'package:quiz_app/quiz_categories/enzyme_technology/question_controller_trivia/question_controller_enzyme_technology.dart';

class EnzymeTechnologyView extends StatelessWidget {
  const EnzymeTechnologyView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    QuestionControllerEnzymeTechnology controller =
        Get.put(QuestionControllerEnzymeTechnology());
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
      body: const BodyEnzymeTechnologyView(),
    );
  }
}
