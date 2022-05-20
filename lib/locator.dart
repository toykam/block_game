import 'package:block_game/audio_service.dart';
import 'package:get_it/get_it.dart';

final getIt = GetIt.instance;


void setUpLocator() {
  getIt.registerSingleton<GameAudioManager>(GameAudioManager());
}