abstract class IAudioPlayer {
  Future<Duration?> inizializeAudioPlayer() async {}

  Future<void> play();

  Future<void> setVolume(double volume);
}
