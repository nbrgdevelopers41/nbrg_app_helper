//
//  Generated file. Do not edit.
//

// clang-format off

#include "generated_plugin_registrant.h"

#include <nbrg_app_helper/nbrg_app_helper_plugin.h>

void fl_register_plugins(FlPluginRegistry* registry) {
  g_autoptr(FlPluginRegistrar) nbrg_app_helper_registrar =
      fl_plugin_registry_get_registrar_for_plugin(registry, "NbrgAppHelperPlugin");
  nbrg_app_helper_plugin_register_with_registrar(nbrg_app_helper_registrar);
}
