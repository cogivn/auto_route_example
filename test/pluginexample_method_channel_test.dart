import 'package:flutter/services.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:pluginexample/pluginexample_method_channel.dart';

void main() {
  MethodChannelPluginexample platform = MethodChannelPluginexample();
  const MethodChannel channel = MethodChannel('pluginexample');

  TestWidgetsFlutterBinding.ensureInitialized();

  setUp(() {
    channel.setMockMethodCallHandler((MethodCall methodCall) async {
      return '42';
    });
  });

  tearDown(() {
    channel.setMockMethodCallHandler(null);
  });

  test('getPlatformVersion', () async {
    expect(await platform.getPlatformVersion(), '42');
  });
}
