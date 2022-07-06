#include "include/nbrg_app_helper/nbrg_app_helper_plugin_c_api.h"

#include <flutter/plugin_registrar_windows.h>

#include "nbrg_app_helper_plugin.h"

void NbrgAppHelperPluginCApiRegisterWithRegistrar(
    FlutterDesktopPluginRegistrarRef registrar) {
  nbrg_app_helper::NbrgAppHelperPlugin::RegisterWithRegistrar(
      flutter::PluginRegistrarManager::GetInstance()
          ->GetRegistrar<flutter::PluginRegistrarWindows>(registrar));
}
