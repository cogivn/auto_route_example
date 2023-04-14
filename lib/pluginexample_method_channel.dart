import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';

import 'pluginexample_platform_interface.dart';

/// An implementation of [PluginexamplePlatform] that uses method channels.
class MethodChannelPluginexample extends PluginexamplePlatform {
  /// The method channel used to interact with the native platform.
  @visibleForTesting
  final methodChannel = const MethodChannel('pluginexample');

  @override
  Future<String?> getPlatformVersion() async {
    final version = await methodChannel.invokeMethod<String>('getPlatformVersion');
    return version;
  }
}
