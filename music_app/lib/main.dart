

import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';
void main() {
  runApp(musicApp());
}

class musicApp extends StatelessWidget {
  const musicApp({super.key});

  void playMusic(int muiscNumber) async {
    final player = AudioPlayer();
    await player.play(AssetSource('audio/music-$muiscNumber.mp3'));
  }
  Expanded myButton({required int musicNumber, required Color colorButton, required String buttonText}) {
    return Expanded(
              child: Padding(
                padding: const EdgeInsets.all(4.0),
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.white,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30.0),
                    ),
                  ),
                  onPressed: ()  {
                  playMusic(musicNumber);
                },
                  child: Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 20.0),
                        child: Icon(
                          Icons.music_note,
                          color: colorButton,
                        ),
                      ),
                      SizedBox(
                        width: 20.0,
                      ),
                      Text(buttonText,
                        style: TextStyle(
                          color: colorButton,
                          fontSize: 20.0
                        )
                      ),
                    ],
                  ),
                ),
              ),
            );
  }
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Music App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
        backgroundColor: Colors.purple[300],
        appBar: AppBar(
          backgroundColor: Colors.purple[800],
          title: Center(
            child: Text('Music App',
              style: TextStyle(
                color: Colors.purple[100],
                fontSize: 30,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          
          children: [
            myButton(musicNumber: 1, colorButton :const Color.fromARGB(255, 206, 178, 19),buttonText:  'Samsung Galaxy'),
            myButton(musicNumber: 2, colorButton:  Colors.purple,buttonText:  'Samsung Note'),
            myButton(musicNumber: 3, colorButton:  const Color.fromARGB(255, 30, 146, 146),buttonText:  'Nokia'),
            myButton(musicNumber: 4, colorButton:  const Color.fromARGB(255, 121, 39, 176), buttonText: 'iPhone 11'),
            myButton(musicNumber: 5, colorButton: const Color.fromARGB(255, 176, 89, 39),buttonText:  'WhatsApp'),
            myButton(musicNumber: 6, colorButton: const Color.fromARGB(255, 39, 160, 176),buttonText:  'Samsung S7'),
            myButton(musicNumber: 7, colorButton: const Color.fromARGB(255, 50, 176, 39),buttonText:  'iPhone 6'),
            
          ]
        ),
      ),
    );
  }
}