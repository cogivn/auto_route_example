import 'package:plugin_platform_interface/plugin_platform_interface.dart';

import 'pluginexample_method_channel.dart';

abstract class PluginexamplePlatform extends PlatformInterface {
  /// Constructs a PluginexamplePlatform.
  PluginexamplePlatform() : super(token: _token);

  static final Object _token = Object();

  static PluginexamplePlatform _instance = MethodChannelPluginexample();

  /// The default instance of [PluginexamplePlatform] to use.
  ///
  /// Defaults to [MethodChannelPluginexample].
  static PluginexamplePlatform get instance => _instance;

  /// Platform-specific implementations should set this with their own
  /// platform-specific class that extends [PluginexamplePlatform] when
  /// they register themselves.
  static set instance(PluginexamplePlatform instance) {
    PlatformInterface.verifyToken(instance, _token);
    _instance = instance;
  }

  Future<String?> getPlatformVersion() {
    throw UnimplementedError('platformVersion() has not been implemented.');
  }
}
