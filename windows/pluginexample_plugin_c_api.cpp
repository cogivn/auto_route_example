#include "include/pluginexample/pluginexample_plugin_c_api.h"

#include <flutter/plugin_registrar_windows.h>

#include "pluginexample_plugin.h"

void PluginexamplePluginCApiRegisterWithRegistrar(
    FlutterDesktopPluginRegistrarRef registrar) {
  pluginexample::PluginexamplePlugin::RegisterWithRegistrar(
      flutter::PluginRegistrarManager::GetInstance()
          ->GetRegistrar<flutter::PluginRegistrarWindows>(registrar));
}
