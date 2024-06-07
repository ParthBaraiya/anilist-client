import 'package:anilist_client/utilities/extensions/global.dart';

extension ObjectExtension on Object {
  void log() => logMessage(() => '$this');
}
