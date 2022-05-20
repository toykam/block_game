
import 'package:block_game/animations/breathing_animation.dart';
import 'package:block_game/audio_service.dart';
import 'package:block_game/lets_play_screen.dart';
import 'package:block_game/locator.dart';
import 'package:block_game/widgets/animated_container.dart';
import 'package:block_game/widgets/designed_text.dart';
import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);


  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  @override
  initState() {
    super.initState();
    getIt<GameAudioManager>().playBackgroundSound();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [

          Positioned.fill(
            child: Container(
              decoration: BoxDecoration(
                gradient: RadialGradient(
                  colors: [
                    Color(0xFF31B5FF),
                    Color(0xFF7AE2FF)
                  ]
                )
              ),
            ),
          ),

          const Positioned(
            bottom: 0, left: 0, right: 0, top: 0,
            child: DecoratedBox(
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/images/overlay_2.png'),
                  alignment: Alignment.bottomCenter,
                )
              ),
            ),
          ),

          Positioned.fill(
            child: Container(
              decoration: BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.topCenter, end: Alignment.bottomCenter,
                    colors: [
                      Color(0xFF31B5FF),
                      Color(0xFF31B5FF).withOpacity(.7),
                    ]
                  )
              ),
            ),
          ),
          Positioned(
            left: 0, top: 0, right: 0,
            child: Container(
              height: 361,
              decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('assets/images/cloud_bg.png'),
                    fit: BoxFit.cover
                  )
              ),
            ),
          ),
          Positioned(
            left: 0, right: 0,
            top: 0, bottom: 0,
            child: Column(
              children: [
                const SizedBox(height: 212,),
                Center(
                  child: Image.asset('assets/images/_ CBT.png'),
                ),
                Center(
                  child: Image.asset('assets/images/_ trivia.png', height: 58,),
                ),
                Expanded(child: const SizedBox(height: 115,)),
                BreathingAnimation(
                  child: AnimatedContainerOnClicked(
                    onClick: () {
                      getIt<GameAudioManager>().playClick();
                      Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) {
                          return LetsPlayScreen();
                        },
                      ));
                    },
                    child: Container(
                      height: 72,
                      decoration: const BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage("assets/images/_ play button.png")
                        )
                      ),
                      child: Center(
                        child: Text('Play', style: TextStyle(
                          color: Colors.white, fontFamily: 'FredokaOne', fontSize: 36
                        ),),
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 190,)
              ],
            ),
          ),
        ],
      ),
    );
  }
}