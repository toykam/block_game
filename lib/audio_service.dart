

import 'package:audioplayers/audioplayers.dart';
// import 'package:just_audio/just_audio.dart';

class GameAudioManager {
  //
  // final clickSoundPlayer = AudioPlayer();
  final _player = AudioCache(
    prefix: "assets/audio/",
    fixedPlayer: AudioPlayer()..setReleaseMode(ReleaseMode.STOP),
  );

  final _backGroundPlayer = AudioCache(
    prefix: "assets/audio/",
    fixedPlayer: AudioPlayer()..setReleaseMode(ReleaseMode.STOP),
    // duckAudio: true,
    // respectSilence: true
  );

  void playBackgroundSound() {
    try {
      _backGroundPlayer.play('background.aac', volume: .05);
      // if (clickSoundPlayer.playing) {
      //   clickSoundPlayer.stop();
      //   clickSoundPlayer.setAsset('assets/audio/click.aac');
      //   clickSoundPlayer.setVolume(1.0);
      // }
      // clickSoundPlayer.play();
    } catch (error) {
      rethrow;
    }
  }

  void playClick() {
    try {
      _player.play('click.aac');
      // if (clickSoundPlayer.playing) {
      //   clickSoundPlayer.stop();
      //   clickSoundPlayer.setAsset('assets/audio/click.aac');
      //   clickSoundPlayer.setVolume(1.0);
      // }
      // clickSoundPlayer.play();
    } catch (error) {
      rethrow;
    }
  }

  GameAudioManager() {
    // _backGroundPlayer.
  }
}