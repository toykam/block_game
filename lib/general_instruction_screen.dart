

import 'package:block_game/audio_service.dart';
import 'package:block_game/locator.dart';
import 'package:block_game/widgets/animated_container.dart';
import 'package:block_game/widgets/designed_text.dart';
import 'package:flutter/material.dart';

class GeneralInstructionScreen extends StatefulWidget {
  const GeneralInstructionScreen({Key? key}) : super(key: key);

  @override
  State<GeneralInstructionScreen> createState() => _GeneralInstructionScreenState();
}

class _GeneralInstructionScreenState extends State<GeneralInstructionScreen> {

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
              decoration: const BoxDecoration(
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

          Positioned.fill(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(height: 40,),
                Container(
                  margin: const EdgeInsets.only(left: 15),
                  child: Image.asset('assets/images/angle-small-left 1.png', height: 43,),
                ),
                const SizedBox(height: 29,),
                Image.asset('assets/images/general_instruction_bill.png'),
                // const SizedBox(height: 29,),

                Text(""" The quizzes consists of questions carefully designed to help you 
 self-assess you comprehension of the infromation presented on
 the topics covered in the module. No data will be collected on the
 website regarding your responses or how
many times you take the
 quiz..

 Each question in the quiz is of  multiple-choice or “true-false”

format. Read each question carefully and click on the button next
 to your reponse that is based on the information covered on the
 topic in the module. Each correct or incorrect
response will result
 appropriate feedback immediately at the bottom of the screen.


After responding to a question, click on the “Next Question” button
 at the bottom to go to the next question."""),


                SizedBox(height: 57)
              ],
            ),
          ),
        ],
      ),
    );
  }
}