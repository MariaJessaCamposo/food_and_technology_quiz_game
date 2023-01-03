import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';

class Play extends StatelessWidget {
  Play({Key? key}) : super(key: key);

  final audio = AudioPlayer();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: ElevatedButton(
            child: const Text(
              'Click me'
            ),
              onPressed: () {
                AudioPlayer().play(AssetSource('correct.mp3'));
              }
            // onPressed: () =>
            //   AudioPlayer().play(AssetSource('lib/assets/audio/correct.mp3'))
          ),
        ),
      ),
    );
  }
}
