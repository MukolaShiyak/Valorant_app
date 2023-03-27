import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';

import '/src/core/services/audio_player_service/audio_player_service.dart';
import '/src/core/services/audio_player_service/iaudio_player.dart';

import 'core/services/dio/dio_factory.dart';
import 'core/utils/constants.dart';

final GetIt injector = GetIt.instance;

Future<void> initializeDependencies() async {
  //Dio
  injector.registerSingleton<Dio>(DioFactory(kBaseUrl).create());

  // audioPlayer
  injector.registerSingleton<IAudioPlayer>(AudioPlayerService());
}
