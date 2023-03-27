import 'package:just_audio/just_audio.dart';

import '/src/core/services/audio_player_service/iaudio_player.dart';

class AudioPlayerService implements IAudioPlayer {
  AudioPlayerService._privateConstructor();
  static final AudioPlayerService _instance =
      AudioPlayerService._privateConstructor();
  factory AudioPlayerService() => _instance;

  final AudioPlayer _player = AudioPlayer();
  Duration? _duration;

  AudioPlayer get player => _player;

  @override
  Future<Duration?> inizializeAudioPlayer() async {
    return _duration = await _player
        .setUrl('http://webaudioapi.com/samples/audio-tag/chrono.mp3');
  }

  @override
  Future<void> play() async {
    await _player.play();
    await _player.setLoopMode(LoopMode.one);
  }

  @override
  Future<void> setVolume(double volume) async {
    await _player.setVolume(volume);
  }
}
