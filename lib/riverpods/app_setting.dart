import 'package:fish/models/app_setting.dart';
import 'package:package_info_plus/package_info_plus.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'app_setting.g.dart';

late PackageInfo packageInfo;

@Riverpod(keepAlive: true)
AppSetting appSetting(
  AppSettingRef ref,
) {
  return AppSetting(
    appName: packageInfo.appName,
    appIcon: 'assets/icon/icon.png',
  );
}
