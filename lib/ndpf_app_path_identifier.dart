
import 'ndpf_app_path_identifier_platform_interface.dart';

class NdpfAppPathIdentifier {
  Future<String?> getPlatformVersion() {
    return NdpfAppPathIdentifierPlatform.instance.getPlatformVersion();
  }


  /// Returns where this app's `.exe` is located
  Future<String?> getAppInstallDirectory() {
    return NdpfAppPathIdentifier
  }
}
