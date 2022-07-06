
import 'nbrg_app_helper_platform_interface.dart';

class NbrgAppHelper {
  Future<String?> getPlatformVersion() {
    return NbrgAppHelperPlatform.instance.getPlatformVersion();
  }
}
