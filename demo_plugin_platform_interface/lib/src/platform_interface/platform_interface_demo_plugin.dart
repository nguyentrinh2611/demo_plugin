import 'package:plugin_platform_interface/plugin_platform_interface.dart';

import '../method_channel/method_channel_demo_plugin.dart';

abstract class DemoPluginPlatformInterface extends PlatformInterface {
  /// Constructs a DemoPluginPlatform.
  DemoPluginPlatformInterface() : super(token: _token);

  static final Object _token = Object();

  static DemoPluginPlatformInterface _instance = MethodChannelDemoPlugin();

  /// The default instance of [DemoPluginPlatform] to use.
  ///
  /// Defaults to [MethodChannelDemoPlugin].
  static DemoPluginPlatformInterface get instance => _instance;

  /// Platform-specific implementations should set this with their own
  /// platform-specific class that extends [DemoPluginPlatform] when
  /// they register themselves.
  static set instance(DemoPluginPlatformInterface instance) {
    PlatformInterface.verifyToken(instance, _token);
    _instance = instance;
  }

  Future<String?> getPlatformVersion() {
    throw UnimplementedError('platformVersion() has not been implemented.');
  }
}
