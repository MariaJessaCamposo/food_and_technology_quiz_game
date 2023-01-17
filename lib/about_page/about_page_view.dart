import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AboutPageView extends StatelessWidget {
  const AboutPageView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          decoration: BoxDecoration(
              gradient: LinearGradient(
                  colors: [const Color(0xffA40FD9), Colors.deepOrange.shade300],
                  begin: Alignment.centerLeft,
                  end: Alignment.centerRight,
                  stops: const [0.2, 0.9])),
          child: Padding(
            padding: const EdgeInsets.all(20),
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  const Text(
                    "About",
                    style: TextStyle(
                        fontSize: 40,
                        fontWeight: FontWeight.bold,
                        color: Colors.white),
                  ),
                  const Text(
                    "Food Technology\nQuiz of Knowledge 2023",
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 20),
                  ),
                  const Text(
                      "Food-Tech Kit quiz app is about testing the knowledge of food technology related students.\n"
                      "This would help them familiarize the courses present in their field.",
                    textAlign: TextAlign.center,style: TextStyle(fontSize: 16)),
                  SizedBox(
                      child: Column(
                        children: const [
                          Text("Development & Game Design: Shawty Gaming"),
                          SizedBox(height: 10),
                          Text("Maria Jessa Camposo\nGeraldine Tiongson\nJudilie Tahanlangit"),
                        ],
                      )),

                  const Text("Music: Quiz Background Music #1 Downloaded from The Youtube Library")
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
