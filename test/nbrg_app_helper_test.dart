import 'package:flutter_test/flutter_test.dart';
import 'package:nbrg_app_helper/nbrg_app_helper.dart';
import 'package:nbrg_app_helper/nbrg_app_helper_platform_interface.dart';
import 'package:nbrg_app_helper/nbrg_app_helper_method_channel.dart';
import 'package:plugin_platform_interface/plugin_platform_interface.dart';

class MockNbrgAppHelperPlatform 
    with MockPlatformInterfaceMixin
    implements NbrgAppHelperPlatform {

  @override
  Future<String?> getPlatformVersion() => Future.value('42');
}

void main() {
  final NbrgAppHelperPlatform initialPlatform = NbrgAppHelperPlatform.instance;

  test('$MethodChannelNbrgAppHelper is the default instance', () {
    expect(initialPlatform, isInstanceOf<MethodChannelNbrgAppHelper>());
  });

  test('getPlatformVersion', () async {
    NbrgAppHelper nbrgAppHelperPlugin = NbrgAppHelper();
    MockNbrgAppHelperPlatform fakePlatform = MockNbrgAppHelperPlatform();
    NbrgAppHelperPlatform.instance = fakePlatform;
  
    expect(await nbrgAppHelperPlugin.getPlatformVersion(), '42');
  });
}
