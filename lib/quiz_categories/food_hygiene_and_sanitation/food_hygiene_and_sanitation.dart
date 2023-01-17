import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:quiz_app/quiz_categories/food_hygiene_and_sanitation/components/body_food_hygiene_and_sanitation_view.dart';
import 'package:quiz_app/quiz_categories/food_hygiene_and_sanitation/question_controller/question_controller_food_hygiene_and_sanitation.dart';

class FoodHS extends StatelessWidget {
  const FoodHS({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    QuestionControllerFoodHS controller = Get.put(QuestionControllerFoodHS());
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
      body: const BodyFoodHSView(),
    );
  }
}
