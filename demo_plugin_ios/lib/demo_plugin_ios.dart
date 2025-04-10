library demo_plugin_ios;

import 'package:demo_plugin_platform_interface/demo_plugin.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';

/// An implementation of [DemoPluginPlatformInterface] that uses method channels.
class DemoPluginIOS extends DemoPluginPlatformInterface {
  /// The method channel used to interact with the native platform.
  @visibleForTesting
  final methodChannel = const MethodChannel('demo_plugin');

  static void registerWith() {
    DemoPluginPlatformInterface.instance = DemoPluginIOS();
  }

  @override
  Future<String?> getPlatformVersion() async {
    final version =
        await methodChannel.invokeMethod<String>('getPlatformVersion');
    return version;
  }
}
