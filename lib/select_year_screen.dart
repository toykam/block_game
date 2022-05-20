

import 'package:block_game/audio_service.dart';
import 'package:block_game/locator.dart';
import 'package:block_game/widgets/animated_container.dart';
import 'package:block_game/widgets/designed_text.dart';
import 'package:flutter/material.dart';

class SelectYearScreen extends StatefulWidget {
  const SelectYearScreen({Key? key, required this.title}) : super(key: key);


  final String title;

  @override
  State<SelectYearScreen> createState() => _SelectYearScreenState();
}

class _SelectYearScreenState extends State<SelectYearScreen> {

  @override
  initState() {
    super.initState();
    getIt<GameAudioManager>().playBackgroundSound();
  }



  @override
  Widget build(BuildContext context) {
    List years = [
      '2010', '2011', '2013',
      '2010', '2011', '2013',
      '2010', '2011', '2013',
      '2010', '2011', '2013',
    ];
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
                Image.asset('assets/images/select year.png'),
                // const SizedBox(height: 29,),
                Expanded(
                  child: GridView.builder(
                    padding: const EdgeInsets.only(top: 0, left: 48, right: 48),
                    itemCount: years.length,
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      crossAxisSpacing: 15,
                      mainAxisExtent: 70,
                      mainAxisSpacing: 15
                    ),
                    itemBuilder: (context, index) {
                      final subject = years[index];
                      return AnimatedContainerOnClicked(
                        onClick: () {},
                        child: Container(
                          decoration: const BoxDecoration(
                            image: DecorationImage(
                              image: AssetImage('assets/images/2020 bar.png'),
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
                ),

                Center(
                  child: Text("waec", style: TextStyle(
                    fontFamily: 'FredokaOne', color: Colors.white,
                    fontSize: 25,
                    shadows: [
                      Shadow(
                        color: Color(0xFF000000).withOpacity(.25),
                        offset: Offset(0, 4), blurRadius: 4
                      )
                    ]
                  ),)
                ),
                SizedBox(height: 57)
              ],
            ),
          ),
        ],
      ),
    );
  }
}