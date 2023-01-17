import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:quiz_app/games/dish/guess_the_dish.dart';
import 'package:quiz_app/games/kte/kitchen_tools_equipment_view.dart';
import 'package:quiz_app/games/trivia/food_trivia_view.dart';

class Games extends StatelessWidget {
  const Games({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   title: Text('Select one category'),
      //   centerTitle: true,
      // ),
      body: SafeArea(
          child: SingleChildScrollView(
        child: Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          decoration: BoxDecoration(
              gradient: LinearGradient(
                  colors: [Color(0xffCB49F9), Colors.deepOrange.shade300],
                  begin: Alignment.centerLeft,
                  end: Alignment.centerRight,
                  stops: [0.2, 0.9])),
          child: Padding(
            padding: const EdgeInsets.all(30.0),
            child: Stack(
              children: [
                const Positioned(
                  top: 80,
                  // left: 50,
                  child: SizedBox(
                    // width: 270,
                    child: Text("Select one category >>>",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 28,
                            fontWeight: FontWeight.w700)),
                  ),
                ),
                Positioned(
                    top: 230,
                    child: InkWell(
                      onTap: () => Get.to(const KitchenToolsEquipmentView()),
                      //highlightColor: Colors.blue,
                      splashColor: Colors.black,
                      child: Padding(
                        padding: const EdgeInsets.only(left: 16, right: 16),
                        child: Container(
                          height: 108,
                          width: 270,
                          decoration: BoxDecoration(
                              color: const Color(0xffE7A1FF),
                              borderRadius: BorderRadius.circular(20),
                              boxShadow: [
                                BoxShadow(
                                    color: Colors.grey.withOpacity(0.5),
                                    spreadRadius: 4,
                                    blurRadius: 7,
                                    offset: const Offset(0, 3))
                              ]),
                          child: const Padding(
                            padding: EdgeInsets.only(left: 30, top: 35),
                            child: Text("Kitchen Tools\nand Equipment",
                                style: TextStyle(
                                    fontSize: 16, fontWeight: FontWeight.w600)),
                          ),
                        ),
                      ),
                    )),
                Positioned(
                  top: 200,
                  left: 160,
                  child: SizedBox(
                    width: 119,
                    height: 119,
                    child: Image.asset("lib/assets/icons/kte.png"),
                  ),
                ),
                Positioned(
                    // top: 550,
                    top: 390,
                    child: InkWell(
                      splashColor: Colors.black,
                      onTap: () => Get.to(const FoodTriviaView()),
                      child: Padding(
                        padding: const EdgeInsets.only(left: 16, right: 16),
                        child: Container(
                          height: 108,
                          width: 270,
                          decoration: BoxDecoration(
                              color: const Color(0xffA40FD9),
                              borderRadius: BorderRadius.circular(20),
                              boxShadow: [
                                BoxShadow(
                                    color: Colors.grey.withOpacity(0.5),
                                    spreadRadius: 4,
                                    blurRadius: 7,
                                    offset: const Offset(0, 3))
                              ]),
                          child: const Padding(
                            padding: EdgeInsets.only(left: 30, top: 42),
                            child: Text("Food Trivia",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 20,
                                    fontWeight: FontWeight.w600)),
                          ),
                        ),
                      ),
                    )),
                Positioned(
                  top: 360,
                  // left: 10,
                  // top: 520,
                  left: 160,
                  child: SizedBox(
                    width: 119,
                    height: 119,
                    child: Image.asset("lib/assets/icons/trivia.png"),
                  ),
                ),
              ],
            ),
          ),
        ),
      )),
    );
  }
}
