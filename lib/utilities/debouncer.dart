import 'dart:async';
import 'dart:ui';

class Debouncer {
  final Duration duration;

  Timer? _timer;

  Debouncer({
    required this.duration,
  });

  void call(VoidCallback callback) {
    _timer?.cancel();
    _timer = Timer(duration, callback);
  }

  void dispose() {
    _timer?.cancel();
  }
}
