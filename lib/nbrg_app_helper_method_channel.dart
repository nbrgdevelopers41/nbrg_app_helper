import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';

import 'nbrg_app_helper_platform_interface.dart';

/// An implementation of [NbrgAppHelperPlatform] that uses method channels.
class MethodChannelNbrgAppHelper extends NbrgAppHelperPlatform {
  /// The method channel used to interact with the native platform.
  @visibleForTesting
  final methodChannel = const MethodChannel('nbrg_app_helper');

  @override
  Future<String?> getPlatformVersion() async {
    final version = await methodChannel.invokeMethod<String>('getPlatformVersion');
    return version;
  }
}
