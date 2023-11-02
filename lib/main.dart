import 'package:flutter/material.dart';
import 'package:english_words/english_words.dart';
import 'package:assets_audio_player/assets_audio_player.dart';

void main() {
  runApp(XylophoneApp());
}

class XylophoneApp extends StatelessWidget {
  const XylophoneApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SafeArea(
          child: Center(
            child: TextButton(
              onPressed: () {
                // AssetsAudioPlayer.newPlayer().open(
                //   Audio("assets/note1.wav"),
                //   autoStart: true,
                //   showNotification: true,
                // );
                final assetsAudioPlayer = AssetsAudioPlayer();
                assetsAudioPlayer.open(
                  Audio("assets/note1.wav"),
                );

              },
              child: Text('Click me'),
            ),
          ),
        ),
      ),
    );
  }
}
