import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:quiz_app/constants.dart';
import 'package:quiz_app/games/kte/bpp/difficult/question_controller_trivia/question_controller_bpp_difficult.dart';
import 'package:quiz_app/homepage/homepage_view.dart';
import 'package:quiz_app/quiz_categories/food_hygiene_and_sanitation/question_controller/question_controller_food_hygiene_and_sanitation.dart';

class ScoreScreenFoodHS extends StatelessWidget {
  const ScoreScreenFoodHS({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    QuestionControllerFoodHS qnController = Get.put(QuestionControllerFoodHS());
    var score = qnController.numOfCorrectAns * 10;
    return Scaffold(
      body: Stack(
        fit: StackFit.expand,
        children: [
          SvgPicture.asset("lib/assets/icons/bg.svg", fit: BoxFit.fill),
          Column(
            children: [
              const Spacer(flex: 3),
              Text(
                "Score",
                style: Theme.of(context)
                    .textTheme
                    .headline3
                    ?.copyWith(color: kSecondaryColor),
              ),
              const Spacer(),
              Text(
                // "${qnController.numOfCorrectAns * 10}/${qnController.questions.length * 10}",
                "${score}/${qnController.foodHygieneAndSanitationQuestions.length * 10}",
                style: Theme.of(context)
                    .textTheme
                    .headline4
                    ?.copyWith(color: kSecondaryColor),
              ),
              const Spacer(flex: 3),
            ],
          )
        ],
      ),
      bottomNavigationBar: InkWell(
        // onTap: () => Get.to(() => const HomepageView()),
        onTap: () {
          final docUser = FirebaseFirestore.instance
              .collection('categories')
              .doc('cGzmHPHTABMQXIzpaug8');

          //update specific field
          docUser.update({'score': score});

          Get.offAll(const HomepageView());
        },

        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Container(
            height: 40,
            width: 20,
            decoration: BoxDecoration(
                color: Colors.teal,
                borderRadius: BorderRadiusDirectional.circular(10)),
            child: const Center(
              child: Text(
                "Back to Home",
                style: TextStyle(fontSize: 20),
              ),
            ),
          ),
        ),
      ),
    );
  }
}