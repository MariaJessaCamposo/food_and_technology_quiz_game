import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:quiz_app/quiz_categories/nutrition_and_health/components/body_nutrition_and_health_view.dart';
import 'package:quiz_app/quiz_categories/nutrition_and_health/question_controller_trivia/question_controller_nutrition_and_health.dart';

class NutritionAndHealthView extends StatelessWidget {
  const NutritionAndHealthView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    QuestionControllerNutritionAndHealth controller =
        Get.put(QuestionControllerNutritionAndHealth());
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
      body: const BodyNutritionAndHealthView(),
    );
  }
}
