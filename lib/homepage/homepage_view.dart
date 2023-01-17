import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:quiz_app/about_page/about_page_view.dart';
import 'package:quiz_app/game_rules/game_rules.dart';
import 'package:quiz_app/games/games.dart';
import 'package:quiz_app/quiz_categories/quiz_categories.dart';
import 'package:quiz_app/scores/scores.dart';

class HomepageView extends StatefulWidget {
  const HomepageView({Key? key}) : super(key: key);
  final Color _iconColor = Colors.black;

  @override
  State<HomepageView> createState() => _HomepageViewState();
}

class _HomepageViewState extends State<HomepageView>
    with WidgetsBindingObserver {
  final List<AppLifecycleState> _stateHistoryList = <AppLifecycleState>[];
  final audioPlayer = AudioPlayer();

  bool isPlaying = false;

  // @override
  // void initState() {
  //   super.initState();
  //   WidgetsBinding.instance.addObserver(this);
  //   if (WidgetsBinding.instance.lifecycleState != null) {
  //     _stateHistoryList.add(WidgetsBinding.instance.lifecycleState!);
  //   }
  // }

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addObserver(this);
    if (WidgetsBinding.instance.lifecycleState != null) {
      _stateHistoryList.add(WidgetsBinding.instance.lifecycleState!);
    }
    //Listen to states: playing, paused stopped
    audioPlayer.onPlayerStateChanged.listen((state) {
      setState(() {
        isPlaying = state == PlayerState.playing;
      });
    });
  }

  @override
  void didChangeAppLifecycleState(AppLifecycleState state) {
    setState(() {
      _stateHistoryList.add(state);
    });
  }

  @override
  void dispose() {
    WidgetsBinding.instance.removeObserver(this);
    super.dispose();
  }



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
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              const SizedBox(height: 50),
              const Padding(
                padding: EdgeInsets.all(8.0),
                child: Center(
                  child: Text(
                    'Food Technology Quiz of Knowledge',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        fontSize: 32,
                        color: Colors.white,
                        fontWeight: FontWeight.w600),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 140),
                child: Center(
                  child: InkWell(
                    onTap: () => Get.to(() => const QuizCategories()),
                    child: Container(
                      height: 150,
                      width: 150,
                      decoration: BoxDecoration(
                          color: Colors.green,
                          borderRadius: BorderRadius.circular(100)),
                      child: const Center(
                        child: Text(
                          "Play",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 30,
                              fontWeight: FontWeight.w600),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 60),
                child: Center(
                  child: InkWell(
                    onTap: () => Get.to(() => const GameRules()),
                    child: Container(
                      height: 40,
                      width: 150,
                      decoration: BoxDecoration(
                          border: Border.all(color: Colors.teal),
                          borderRadius: BorderRadiusDirectional.circular(10)),
                      child: const Center(
                        child: Text(
                          "Game Rules",
                          style: TextStyle(
                              fontSize: 20,
                              color: Colors.blue,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
      bottomNavigationBar: Container(
        height: 100,
        decoration: BoxDecoration(
            gradient: LinearGradient(
                colors: [const Color(0xffA40FD9), Colors.deepOrange.shade300],
                begin: Alignment.centerLeft,
                end: Alignment.centerRight,
                stops: const [0.2, 0.9])),
        padding: const EdgeInsets.symmetric(
          horizontal: 16,
          vertical: 5,
        ),
        child: Row(
          //mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          //crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Column(
              // mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  alignment: Alignment.center,
                  height: 70,
                  width: 70,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                    border: Border.all(
                      color: Colors.black.withOpacity(0.3),
                    ),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      IconButton(
                        onPressed: () async {
                          setState(() {
                            Colors.white;
                          });
                          Get.to(() => Scores());
                        },
                        icon: const Icon(
                          Icons.score,
                          size: 35,
                          color: Colors.black,
                        ),
                      ),
                      const Text(
                        'Score',
                      ),
                    ],
                  ),
                ),
              ],
            ),
            Column(
              //mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  alignment: Alignment.center,
                  height: 70,
                  width: 70,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                    border: Border.all(color: Colors.black.withOpacity(0.3)),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      IconButton(
                        icon: Icon(
                          isPlaying ? Icons.volume_up : Icons.volume_off,
                        ),
                        iconSize: 35,
                        onPressed: () async {
                          if (isPlaying) {
                            await audioPlayer.pause();
                          } else {
                            await audioPlayer.play(AssetSource('quiz_bg.m4a'));
                          }
                        },
                      ),
                      const Text(
                        'Music',
                      ),
                    ],
                  ),
                ),
              ],
            ),
            Column(
              //mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  alignment: Alignment.center,
                  height: 70,
                  width: 70,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                    border: Border.all(color: Colors.black.withOpacity(0.3)),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      IconButton(
                        onPressed: () async {
                          Get.to(() => const Games());
                        },
                        icon: const Icon(Icons.games, size: 35),
                      ),
                      const Text(
                        'Games',
                      ),
                    ],
                  ),
                ),
              ],
            ),
            Column(
              //mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  alignment: Alignment.center,
                  height: 70,
                  width: 70,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                    border: Border.all(color: Colors.black.withOpacity(0.3)),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      IconButton(
                        onPressed: () async {
                          Get.to(() => const AboutPageView());
                        },
                        icon: const Icon(Icons.policy, size: 35),
                      ),
                      const Text(
                        'About',
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
