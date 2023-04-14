//
//  Generated file. Do not edit.
//

// clang-format off

#include "generated_plugin_registrant.h"

#include <pluginexample/pluginexample_plugin.h>

void fl_register_plugins(FlPluginRegistry* registry) {
  g_autoptr(FlPluginRegistrar) pluginexample_registrar =
      fl_plugin_registry_get_registrar_for_plugin(registry, "PluginexamplePlugin");
  pluginexample_plugin_register_with_registrar(pluginexample_registrar);
}
