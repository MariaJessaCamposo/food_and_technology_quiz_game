import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:quiz_app/quiz_categories/quiz_categories.dart';

class GameRules extends StatelessWidget {
  const GameRules({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   title: const Text('Game Rules'),
      // ),
      body: SafeArea(
        child: Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          decoration: const BoxDecoration(color: Colors.teal),
          child: Padding(
            padding: const EdgeInsets.fromLTRB(8, 40, 8, 8),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: const [
                Text(
                  "Game Rules",
                  style: TextStyle(
                      fontSize: 40,
                      fontWeight: FontWeight.bold,
                      color: Colors.white),
                ),
                SizedBox(height: 40),
                Text("- Answer the questions as fast as you can.",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    textAlign: TextAlign.start),
                Text("- You have 25 seconds to answer each question.",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    textAlign: TextAlign.start),
                // Text("- You have 3 lives.                                      ", style: TextStyle(fontSize:20, fontWeight: FontWeight.bold), textAlign: TextAlign.start),
                // Text("- For 5 correct answers in a row you gain one life.", style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold), textAlign: TextAlign.start),
                // Text("- The faster you answer the more points you earn.", style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold), textAlign: TextAlign.start),
              ],
            ),
          ),
        ),
      ),
      // bottomNavigationBar: InkWell(
      //   onTap: () => Get.to(() => const QuizCategories()),
      //   child: Padding(
      //     padding: const EdgeInsets.all(16.0),
      //     child: Container(
      //       height: 40,
      //       width: 20,
      //       decoration: BoxDecoration(
      //           color: Colors.teal,
      //           borderRadius: BorderRadiusDirectional.circular(10)),
      //       // child: const Center(
      //       //   child: Text(
      //       //     "Let's Play",
      //       //     style: TextStyle(fontSize: 20),
      //       //   ),
      //       // ),
      //     ),
      //   ),
      // ),
    );
  }
}
