#ifndef FLUTTER_PLUGIN_PLUGINEXAMPLE_PLUGIN_H_
#define FLUTTER_PLUGIN_PLUGINEXAMPLE_PLUGIN_H_

#include <flutter/method_channel.h>
#include <flutter/plugin_registrar_windows.h>

#include <memory>

namespace pluginexample {

class PluginexamplePlugin : public flutter::Plugin {
 public:
  static void RegisterWithRegistrar(flutter::PluginRegistrarWindows *registrar);

  PluginexamplePlugin();

  virtual ~PluginexamplePlugin();

  // Disallow copy and assign.
  PluginexamplePlugin(const PluginexamplePlugin&) = delete;
  PluginexamplePlugin& operator=(const PluginexamplePlugin&) = delete;

 private:
  // Called when a method is called on this plugin's channel from Dart.
  void HandleMethodCall(
      const flutter::MethodCall<flutter::EncodableValue> &method_call,
      std::unique_ptr<flutter::MethodResult<flutter::EncodableValue>> result);
};

}  // namespace pluginexample

#endif  // FLUTTER_PLUGIN_PLUGINEXAMPLE_PLUGIN_H_
