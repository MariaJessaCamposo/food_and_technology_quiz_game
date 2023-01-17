import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:quiz_app/quiz_categories/food_microbiology/components/body_food_microbiology_view.dart';
import 'package:quiz_app/quiz_categories/food_microbiology/question_controller_trivia/question_controller_food_microbiology.dart';

class FoodMicrobiologyView extends StatelessWidget {
  const FoodMicrobiologyView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    QuestionControllerFoodMicrobiology controller =
        Get.put(QuestionControllerFoodMicrobiology());
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
      body: const BodyFoodMicrobiologyView(),
    );
  }
}
