import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:quiz_app/quiz_categories/enzyme_technology/enzyme_technology_view.dart';
import 'package:quiz_app/quiz_categories/food_hygiene_and_sanitation/food_hygiene_and_sanitation.dart';
import 'package:quiz_app/quiz_categories/food_microbiology/food_microbiology.dart';
import 'package:quiz_app/quiz_categories/nutrition_and_health/nutrition_and_health.dart';

class QuizCategories extends StatelessWidget {
  const QuizCategories({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   title: const Text('Select one category'),
      // ),
      body: SafeArea(
        child: Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          decoration: BoxDecoration(
              gradient: LinearGradient(
                  colors: [const Color(0xffA40FD9), Colors.deepOrange.shade300],
                  begin: Alignment.centerLeft,
                  end: Alignment.centerRight,
                  stops: [0.2, 0.9])),
          child: Center(
            // scrollDirection: Axis.vertical,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                SizedBox(height: 50),
                Text(
                  "Select One Category",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                      color: Colors.white),
                ),

                const SizedBox(height: 60),
                InkWell(
                  onTap: () => Get.to(() => const FoodMicrobiologyView()),
                  child: Container(
                      height: 70,
                      width: MediaQuery.of(context).size.width,
                      decoration: const BoxDecoration(color: Colors.teal),
                      child: const Center(
                          child: Text(
                        'Food Microbiology',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                            fontWeight: FontWeight.bold),
                      ))),
                ),
                InkWell(
                  onTap: () => Get.to(() => const EnzymeTechnologyView()),
                  child: Container(
                      height: 70,
                      width: MediaQuery.of(context).size.width,
                      decoration:
                          const BoxDecoration(color: Colors.purpleAccent),
                      child: const Center(
                          child: Text(
                        'Enzyme Technology',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                            fontWeight: FontWeight.bold),
                      ))),
                ),
                InkWell(
                  onTap: () => Get.to(() => const FoodHS()),
                  child: Container(
                      height: 70,
                      width: MediaQuery.of(context).size.width,
                      decoration: const BoxDecoration(color: Colors.blue),
                      child: const Center(
                          child: Text(
                        'Food Hygiene and Sanitation',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                            fontWeight: FontWeight.bold),
                      ))),
                ),
                InkWell(
                  onTap: () => Get.to(() => const NutritionAndHealthView()),
                  child: Container(
                      height: 70,
                      width: MediaQuery.of(context).size.width,
                      decoration: const BoxDecoration(color: Colors.green),
                      child: const Center(
                          child: Text(
                        'Nutrition and Health',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                            fontWeight: FontWeight.bold),
                      ))),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
