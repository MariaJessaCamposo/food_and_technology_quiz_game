import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:quiz_app/quiz_categories/kte/bpp/difficult/bpp_difficult_view.dart';
import 'package:quiz_app/quiz_categories/kte/bpp/easy/bpp_easy_view.dart';
import 'package:quiz_app/quiz_categories/kte/bpp/hard/bpp_hard_view.dart';

class BreadAndPastryView extends StatelessWidget {
  const BreadAndPastryView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        decoration: const BoxDecoration(
          color: Color(0xffE7A1FF),
        ),
        child: Stack(
          children: [



            Positioned(
                top: 250,
                left: 50,
                child: Column(
                  children: [
                    InkWell(

                      // onTap: () => Get.to(const EasyTriviaView()),
                      onTap: () => Get.to(() => const BppEasyView()),

                      child: Container(
                        height: 60,
                        width: 270,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15),
                            color: const Color(0xffFFEAA7)
                        ),
                        child: const Padding(
                          padding: EdgeInsets.fromLTRB(8, 16, 8, 16),
                          child: Text(
                            "Easy",
                            style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.w600
                            ),
                            textAlign: TextAlign.center,
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(height: 20),
                    InkWell(

                      onTap: () => Get.to(() => const BppDifficultView()),
                      child: Container(
                        height: 60,
                        width: 270,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15),
                            color: const Color(0xffFFEAA7)
                        ),
                        child: const Padding(
                          padding: EdgeInsets.fromLTRB(8, 16, 8, 16),
                          child: Text(
                            "Difficult",
                            style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.w600
                            ),
                            textAlign: TextAlign.center,
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(height: 20),
                    InkWell(
                      onTap: () => Get.to(const BppHardView()),
                      child: Container(
                        height: 60,
                        width: 270,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15),
                            color: const Color(0xffFFEAA7)
                        ),
                        child: const Padding(
                          padding: EdgeInsets.fromLTRB(8, 16, 8, 16),
                          child: Text(
                            "Hard",
                            style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.w600
                            ),
                            textAlign: TextAlign.center,
                          ),
                        ),
                      ),
                    )
                  ],
                )
            )
          ],
        ),
      ),
    );
  }
}
