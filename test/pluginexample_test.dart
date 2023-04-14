import 'package:flutter_test/flutter_test.dart';
import 'package:pluginexample/pluginexample.dart';
import 'package:pluginexample/pluginexample_platform_interface.dart';
import 'package:pluginexample/pluginexample_method_channel.dart';
import 'package:plugin_platform_interface/plugin_platform_interface.dart';

class MockPluginexamplePlatform
    with MockPlatformInterfaceMixin
    implements PluginexamplePlatform {

  @override
  Future<String?> getPlatformVersion() => Future.value('42');
}

void main() {
  final PluginexamplePlatform initialPlatform = PluginexamplePlatform.instance;

  test('$MethodChannelPluginexample is the default instance', () {
    expect(initialPlatform, isInstanceOf<MethodChannelPluginexample>());
  });

  test('getPlatformVersion', () async {
    Pluginexample pluginexamplePlugin = Pluginexample();
    MockPluginexamplePlatform fakePlatform = MockPluginexamplePlatform();
    PluginexamplePlatform.instance = fakePlatform;

    expect(await pluginexamplePlugin.getPlatformVersion(), '42');
  });
}
