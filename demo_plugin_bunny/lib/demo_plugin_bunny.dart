import 'package:demo_plugin_platform_interface/demo_plugin_platform_interface.dart';
import 'package:flutter/foundation.dart';

/// An implementation of [DemoPluginPlatform] that uses method channels.
class DemoPlugin {
  /// The method channel used to interact with the native platform.
  @visibleForTesting
  static DemoPluginPlatformInterface get platform =>
      DemoPluginPlatformInterface.instance;

  Future<String?> getPlatformVersion() async {
    final version = await platform.getPlatformVersion();
    return version;
  }
}
