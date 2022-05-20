

import 'package:block_game/audio_service.dart';
import 'package:block_game/locator.dart';
import 'package:block_game/select_year_screen.dart';
import 'package:block_game/widgets/animated_container.dart';
import 'package:block_game/widgets/designed_text.dart';
import 'package:flutter/material.dart';

class SelectSubjectScreen extends StatefulWidget {
  const SelectSubjectScreen({Key? key, required this.title}) : super(key: key);


  final String title;

  @override
  State<SelectSubjectScreen> createState() => _SelectSubjectScreenState();
}

class _SelectSubjectScreenState extends State<SelectSubjectScreen> {

  @override
  initState() {
    super.initState();
    getIt<GameAudioManager>().playBackgroundSound();
  }



  @override
  Widget build(BuildContext context) {
    List subjects = [
      'English', 'Mathematics',
      'English', 'Financial Accounting',
      'English', 'Mathematics',
      'English', 'Mathematics',
      'English', 'Mathematics',
      'English', 'Mathematics',
      'English', 'Mathematics',
      'English', 'Mathematics',
    ];
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
                Image.asset('assets/images/select subject 1.png'),
                // const SizedBox(height: 29,),
                Expanded(
                  child: GridView.builder(
                    padding: const EdgeInsets.only(top: 0),
                    itemCount: subjects.length,
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      crossAxisSpacing: 0,
                      mainAxisExtent: 80,
                    ),
                    itemBuilder: (context, index) {
                      final subject = subjects[index];
                      return AnimatedContainerOnClicked(
                        onClick: () {
                          getIt<GameAudioManager>().playClick();
                          Navigator.of(context).push(MaterialPageRoute(
                            builder: (context) {
                              return SelectYearScreen(title: "title");
                            },
                          ));
                        },
                        child: Container(
                          decoration: const BoxDecoration(
                            image: DecorationImage(
                              image: AssetImage('assets/images/subject_bg.png'),
                              fit: BoxFit.cover
                            )
                          ),
                          child: Center(
                            child: SubjectDesignedText(
                              text: subject,
                              fontFamily: "Renogare",
                              fontSize: 24,
                              spacing: -1,
                            ),
                          ),
                        ),
                      );
                    }
                  )
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}