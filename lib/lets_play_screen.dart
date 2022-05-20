import 'package:block_game/audio_service.dart';
import 'package:block_game/locator.dart';
import 'package:block_game/select_subject_screen.dart';
import 'package:block_game/widgets/animated_container.dart';
import 'package:block_game/widgets/designed_text.dart';
import 'package:flutter/material.dart';

class LetsPlayScreen extends StatelessWidget {
  const LetsPlayScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        children: [

          Positioned.fill(
            child: Container(
              decoration: const BoxDecoration(
                  color: Colors.white,
                  image: DecorationImage(
                    image: AssetImage('assets/images/overlay_2.png'),
                    alignment: Alignment.bottomCenter
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
                    Colors.white,
                    Colors.white.withOpacity(.5)
                  ]
                )
              ),
            ),
          ),


          Positioned.fill(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(height: 95,),
                const Padding(
                  padding: EdgeInsets.only(left: 44),
                  child: Text("Hi Paul", style: TextStyle(
                    color: Color(0xFF9A9A9A), fontSize: 20, fontFamily: 'Renogare'
                  ),),
                ),
                const SizedBox(height: 13,),
                Padding(
                  padding: const EdgeInsets.only(left: 44),
                  child: Image.asset('assets/images/Lets Play.png', height: 54,),
                ),
                const SizedBox(height: 15,),
                Container(
                  height: 70,
                  margin: const EdgeInsets.symmetric(horizontal: 21),
                  decoration: BoxDecoration(
                    // image: DecorationImage(
                    //   image: AssetImage('assets/images/rank bar.png')
                    // )
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(20),
                    boxShadow: [
                      const BoxShadow(
                        color: Colors.black26,
                        blurRadius: 20,
                        offset: Offset(0, 10)
                      )
                    ]
                  ),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Expanded(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Image.asset('assets/images/crown.png', height: 28,),
                            const SizedBox(width: 5,),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.center,
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                const Text('Rank', style: TextStyle(
                                  fontSize: 15, color: Color(0xFF787979), fontFamily: 'Renogare'
                                ),),
                                RichText(
                                  text: const TextSpan(
                                    style: TextStyle(fontFamily: 'Renogare'),
                                    children: [
                                      TextSpan(text: "100", style: TextStyle(color: Colors.black, fontSize: 13)),
                                      TextSpan(text: "/100", style: TextStyle(color: Color(0xFF898A8A), fontSize: 7)),
                                    ]
                                  ),
                                )
                              ],
                            )
                          ],
                        ),
                      ),
                      Container(
                        height: 26.96,
                        width: 1.08,
                        color: Colors.black,
                      ),
                      Expanded(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [

                            Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisAlignment: MainAxisAlignment.center,
                              mainAxisSize: MainAxisSize.min,
                              children: const [
                                Text('Points', style: TextStyle(
                                    fontSize: 15, color: Color(0xFF787979), fontFamily: 'Renogare'
                                ),),
                                Text('0', style: TextStyle(
                                  color: Colors.black, fontSize: 13, fontFamily: 'Renogare'
                                ),),
                              ],
                            ),
                            const SizedBox(width: 5),
                            Image.asset('assets/images/coin.png', height: 28,)
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 30,),

                Container(
                  height: 90,
                  margin: const EdgeInsets.symmetric(horizontal: 44),
                  decoration: const BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage('assets/images/waec bar.png'),
                          fit: BoxFit.cover
                      )
                  ),
                  child: Padding(
                    padding: const EdgeInsets.fromLTRB(32, 0, 20, 0),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        const DesignedText(text: 'waec'),
                        const Spacer(),
                        AnimatedContainerOnClicked(
                          onClick: () {
                            getIt<GameAudioManager>().playBackgroundSound();
                            getIt<GameAudioManager>().playClick();
                            Navigator.of(context).push(MaterialPageRoute(
                              builder: (context) {
                                return const SelectSubjectScreen(title: "Sujejct");
                              },
                            ));
                          },
                          child: Container(
                            width: 68, height: 25,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                gradient: const LinearGradient(
                                    begin: Alignment.topLeft, end: Alignment.bottomRight,
                                    colors: [
                                      Color(0xFF7CFEF3),
                                      Color(0xFF5BCBFB)
                                    ]
                                ),
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.black26,
                                    blurRadius: 10,
                                  )
                                ]
                            ),
                            child: const Center(child: Text("Play", style: TextStyle(
                                color: Color(0xFF979696), fontSize: 13, fontFamily: "FredokaOne"
                            ),)),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
                const SizedBox(height: 10,),

                Container(
                  height: 90,
                  margin: const EdgeInsets.symmetric(horizontal: 44),
                  decoration: const BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage('assets/images/waec bar.png'),
                      fit: BoxFit.cover
                    )
                  ),
                  child: Padding(
                    padding: const EdgeInsets.fromLTRB(32, 0, 20, 0),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        const DesignedText(text: 'utme'),
                        const Spacer(),
                        AnimatedContainerOnClicked(
                          onClick: () {
                            getIt<GameAudioManager>().playBackgroundSound();
                            getIt<GameAudioManager>().playClick();
                          },
                          child: Container(
                            width: 68, height: 25,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              gradient: const LinearGradient(
                                begin: Alignment.topLeft, end: Alignment.bottomRight,
                                colors: [
                                  Color(0xFF7CFEF3),
                                  Color(0xFF5BCBFB)
                                ]
                              ),
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.black26,
                                  blurRadius: 10,
                                )
                              ]
                            ),
                            child: const Center(child: Text("Play", style: TextStyle(
                              color: Color(0xFF979696), fontSize: 13, fontFamily: "FredokaOne"
                            ),)),
                          ),
                        )
                      ],
                    ),
                  ),
                ),

                const SizedBox(height: 10,),
                Container(
                  height: 90,
                  margin: const EdgeInsets.symmetric(horizontal: 44),
                  decoration: const BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage('assets/images/waec bar.png'),
                          fit: BoxFit.cover
                      )
                  ),
                  child: Padding(
                    padding: const EdgeInsets.fromLTRB(32, 0, 20, 0),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        const DesignedText(text: 'neco'),
                        const Spacer(),
                        AnimatedContainerOnClicked(
                          onClick: () {
                            getIt<GameAudioManager>().playBackgroundSound();
                            getIt<GameAudioManager>().playClick();
                          },
                          child: Container(
                            width: 68, height: 25,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                gradient: const LinearGradient(
                                    begin: Alignment.topLeft, end: Alignment.bottomRight,
                                    colors: [
                                      Color(0xFF7CFEF3),
                                      Color(0xFF5BCBFB)
                                    ]
                                ),
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.black26,
                                    blurRadius: 10,
                                  )
                                ]
                            ),
                            child: const Center(child: Text("Play", style: TextStyle(
                                color: Color(0xFF979696), fontSize: 13, fontFamily: "FredokaOne"
                            ),)),
                          ),
                        )
                      ],
                    ),
                  ),
                ),

                const SizedBox(height: 10,),
                Container(
                  height: 90,
                  margin: const EdgeInsets.symmetric(horizontal: 44),
                  decoration: const BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage('assets/images/waec bar.png'),
                          fit: BoxFit.cover
                      )
                  ),
                  child: Padding(
                    padding: const EdgeInsets.fromLTRB(32, 0, 20, 0),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        const DesignedText(text: 'jupeb'),
                        const Spacer(),
                        AnimatedContainerOnClicked(
                          onClick: () {
                            getIt<GameAudioManager>().playBackgroundSound();
                            getIt<GameAudioManager>().playClick();
                          },
                          child: Container(
                            width: 68, height: 25,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                gradient: const LinearGradient(
                                    begin: Alignment.topLeft, end: Alignment.bottomRight,
                                    colors: [
                                      Color(0xFF7CFEF3),
                                      Color(0xFF5BCBFB)
                                    ]
                                ),
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.black26,
                                    blurRadius: 10,
                                  )
                                ]
                            ),
                            child: const Center(child: Text("Play", style: TextStyle(
                                color: Color(0xFF979696), fontSize: 13, fontFamily: "FredokaOne"
                            ),)),
                          ),
                        )
                      ],
                    ),
                  ),
                ),


              ],
            ),
          ),

        ],
      ),
    );
  }
}
