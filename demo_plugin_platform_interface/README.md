# demo_plugin_platform_interface

A common platform interface for the `demo_plugin` plugin.

# Usage

To implement a new platform-specific implementation of `demo_plugin`,

Extend HLImagePickerPlatform with an implementation that performs the platform-specific behavior.
When you register your plugin, set the default DemoPluginPlatform by calling DemoPluginPlatform.instance = DemoPluginPlatform().

