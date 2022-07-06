import 'package:plugin_platform_interface/plugin_platform_interface.dart';

import 'nbrg_app_helper_method_channel.dart';

abstract class NbrgAppHelperPlatform extends PlatformInterface {
  /// Constructs a NbrgAppHelperPlatform.
  NbrgAppHelperPlatform() : super(token: _token);

  static final Object _token = Object();

  static NbrgAppHelperPlatform _instance = MethodChannelNbrgAppHelper();

  /// The default instance of [NbrgAppHelperPlatform] to use.
  ///
  /// Defaults to [MethodChannelNbrgAppHelper].
  static NbrgAppHelperPlatform get instance => _instance;
  
  /// Platform-specific implementations should set this with their own
  /// platform-specific class that extends [NbrgAppHelperPlatform] when
  /// they register themselves.
  static set instance(NbrgAppHelperPlatform instance) {
    PlatformInterface.verifyToken(instance, _token);
    _instance = instance;
  }

  Future<String?> getPlatformVersion() {
    throw UnimplementedError('platformVersion() has not been implemented.');
  }
}
