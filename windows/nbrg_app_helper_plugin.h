#ifndef FLUTTER_PLUGIN_NBRG_APP_HELPER_PLUGIN_H_
#define FLUTTER_PLUGIN_NBRG_APP_HELPER_PLUGIN_H_

#include <flutter/method_channel.h>
#include <flutter/plugin_registrar_windows.h>

#include <memory>

namespace nbrg_app_helper {

class NbrgAppHelperPlugin : public flutter::Plugin {
 public:
  static void RegisterWithRegistrar(flutter::PluginRegistrarWindows *registrar);

  NbrgAppHelperPlugin();

  virtual ~NbrgAppHelperPlugin();

  // Disallow copy and assign.
  NbrgAppHelperPlugin(const NbrgAppHelperPlugin&) = delete;
  NbrgAppHelperPlugin& operator=(const NbrgAppHelperPlugin&) = delete;

 private:
  // Called when a method is called on this plugin's channel from Dart.
  void HandleMethodCall(
      const flutter::MethodCall<flutter::EncodableValue> &method_call,
      std::unique_ptr<flutter::MethodResult<flutter::EncodableValue>> result);
};

}  // namespace nbrg_app_helper

#endif  // FLUTTER_PLUGIN_NBRG_APP_HELPER_PLUGIN_H_
