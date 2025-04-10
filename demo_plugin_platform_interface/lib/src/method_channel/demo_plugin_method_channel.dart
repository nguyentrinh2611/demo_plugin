import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';

import '../platform_interface/demo_plugin_platform_interface.dart';

/// An implementation of [DemoPluginPlatformInterface] that uses method channels.
class MethodChannelDemoPlugin extends DemoPluginPlatformInterface {
  /// The method channel used to interact with the native platform.
  @visibleForTesting
  final methodChannel = const MethodChannel('demo_plugin');

  @override
  Future<String?> getPlatformVersion() async {
    final version =
        await methodChannel.invokeMethod<String>('getPlatformVersion');
    return version;
  }
}
