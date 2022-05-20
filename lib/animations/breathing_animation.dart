


import 'package:block_game/another_screen.dart';
import 'package:block_game/audio_service.dart';
import 'package:block_game/locator.dart';
import 'package:flutter/material.dart';

class BreathingAnimation extends StatefulWidget {
  const BreathingAnimation({Key? key, required this.child}) : super(key: key);

  final Widget child;

  @override
  State<BreathingAnimation> createState() => _BreathingAnimationState();
}

class _BreathingAnimationState extends State<BreathingAnimation> with TickerProviderStateMixin {

  late AnimationController controller;
  late Animation<double> animation;
  late GameAudioManager _gameAudioManager;

  @override
  void initState() {
    super.initState();
    controller = AnimationController(
      vsync: this, duration: const Duration(milliseconds: 1000), reverseDuration: const Duration(milliseconds: 900),
      animationBehavior: AnimationBehavior.preserve,
    );
    controller.addListener(() {
      setState(() {});
      // if (animation.)
    });
    controller.addStatusListener((status) {
      if (status == AnimationStatus.completed) {
        controller.reverse();
      }

      if (status == AnimationStatus.reverse) {
        // controller.forward();
      }
    });
    animation = Tween<double>(begin: 1, end: .7).animate(controller);
    _gameAudioManager = GameAudioManager();
    controller.repeat(reverse: true, );
  }

  @override
  Widget build(BuildContext context) {
    return Transform.scale(
      scale: animation.value,
      child: widget.child,
    );
  }
}
