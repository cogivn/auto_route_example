
import 'pluginexample_platform_interface.dart';

class Pluginexample {
  Future<String?> getPlatformVersion() {
    return PluginexamplePlatform.instance.getPlatformVersion();
  }
}
