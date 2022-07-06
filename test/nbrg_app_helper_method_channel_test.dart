import 'package:flutter/services.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:nbrg_app_helper/nbrg_app_helper_method_channel.dart';

void main() {
  MethodChannelNbrgAppHelper platform = MethodChannelNbrgAppHelper();
  const MethodChannel channel = MethodChannel('nbrg_app_helper');

  TestWidgetsFlutterBinding.ensureInitialized();

  setUp(() {
    channel.setMockMethodCallHandler((MethodCall methodCall) async {
      return '42';
    });
  });

  tearDown(() {
    channel.setMockMethodCallHandler(null);
  });

  test('getPlatformVersion', () async {
    expect(await platform.getPlatformVersion(), '42');
  });
}
