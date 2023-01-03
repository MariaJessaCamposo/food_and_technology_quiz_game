import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:quiz_app/quiz_categories/dish/guess_the_dish.dart';
import 'package:quiz_app/quiz_categories/kte/kitchen_tools_equipment_view.dart';
import 'package:quiz_app/quiz_categories/trivia/food_trivia_view.dart';

class HomepageView extends StatefulWidget {
  const HomepageView({Key? key}) : super(key: key);

  @override
  State<HomepageView> createState() => _HomepageViewState();
}

class _HomepageViewState extends State<HomepageView> {
  final audioPlayer = AudioPlayer();

  bool isPlaying = false;

  @override
  void initState(){
    super.initState();

    //Listen to states: playing, paused stopped
    audioPlayer.onPlayerStateChanged.listen((state) {
      setState(() {
        isPlaying = state == PlayerState.playing;
      });
    });

  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(30.0),
          child: SizedBox(
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            child: Stack(
              children: [
                Positioned(
                    top: 5,
                    child: SizedBox(
                      width: 290,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const Text(
                            'MindFit',
                            style: TextStyle(
                                fontSize: 32,
                                color: Color(0xffA40FD9),
                                fontWeight: FontWeight.w600),
                          ),
                          InkWell(
                            onTap: () {},
                            child: Container(
                              height: 40,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(45)),
                              child: Image.asset("lib/assets/icons/user.png",
                                  fit: BoxFit.contain,
                                  color: const Color(0xffA40FD9)),
                            ),
                          )
                        ],
                      ),
                    )),
                 Positioned(
                    top: 83,
                    child: SizedBox(
                      width: 300,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const Text(
                            "Let's Play!",
                            style:
                                TextStyle(fontSize: 24, fontWeight: FontWeight.w600),
                          ),
                          IconButton(
                            icon: Icon(
                              isPlaying ? Icons.pause : Icons.play_arrow,
                            ),
                            iconSize: 40,
                            onPressed: () async{
                              if (isPlaying){
                                await audioPlayer.pause();
                              } else{
                                await audioPlayer.play(AssetSource('bg_music.mp3'));
                              }
                            },
                          )

                        ],
                      ),
                    )),
                const Positioned(
                  top: 149,
                  left: 85,
                  child: Text("CATEGORIES",
                      style:
                          TextStyle(fontSize: 24, fontWeight: FontWeight.w700)),
                ),
                Positioned(
                    top: 230,
                    child: InkWell(
                      onTap: () => Get.to(const KitchenToolsEquipmentView()),
                      //highlightColor: Colors.blue,
                      splashColor: Colors.black,
                      child: Container(
                        height: 108,
                        width: 289,
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
                    top: 390,
                    child: InkWell(
                      splashColor: Colors.black,
                      onTap: () => Get.to(const GuessTheDishView()),
                      child: Container(
                        height: 108,
                        width: 289,
                        decoration: BoxDecoration(
                            color: const Color(0xffCB49F9),
                            borderRadius: BorderRadius.circular(20),
                            boxShadow: [
                              BoxShadow(
                                  color: Colors.grey.withOpacity(0.5),
                                  spreadRadius: 4,
                                  blurRadius: 7,
                                  offset: const Offset(0, 3))
                            ]),
                        child: const Padding(
                          padding: EdgeInsets.only(left: 150, top: 42),
                          child: Text("Guess the Dish",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 18,
                                  fontWeight: FontWeight.w600)),
                        ),
                      ),
                    )),
                Positioned(
                  top: 360,
                  left: 10,
                  child: SizedBox(
                    width: 119,
                    height: 119,
                    child: Image.asset("lib/assets/icons/dish.png"),
                  ),
                ),
                Positioned(
                    top: 550,
                    child: InkWell(
                      splashColor: Colors.black,
                      onTap: () => Get.to(const FoodTriviaView()),
                      child: Container(
                        height: 108,
                        width: 289,
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
                    )),
                Positioned(
                  top: 520,
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
