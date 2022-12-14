import 'package:flutter/material.dart';

class GuessTheDishView extends StatelessWidget {
  const GuessTheDishView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        decoration: const BoxDecoration(
          color: Color(0xffCB49F9),
        ),
        child: Stack(
          children: [
            Positioned(
              top: 80,
              left: 80,
              child: SizedBox(
                height: 200,
                width: 200,
                child: Image.asset(
                  "lib/assets/icons/dish.png",
                  fit: BoxFit.contain,
                ),
              ),
            ),
            Positioned(
                top: 320,
                left: 40,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: const [
                    Text(
                      "Bread & Pastry / Cookery",
                      style: TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.w600,
                        color: Colors.white
                      ),
                      textAlign: TextAlign.center,
                    ),
                    SizedBox(height: 10),
                    Text(
                      "(Select the corresponding dish.)",
                      style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w400,
                        color: Colors.white
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ],
                )
            ),

            Positioned(
                top: 430,
                left: 50,
                child: Column(
                  children: [
                    InkWell(
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
