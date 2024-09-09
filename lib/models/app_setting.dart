import 'package:freezed_annotation/freezed_annotation.dart';

part 'app_setting.freezed.dart';
part 'app_setting.g.dart';

@freezed
class AppSetting with _$AppSetting {
  factory AppSetting({
    required String appName,
    required String appIcon,
  }) = _AppSetting;

  factory AppSetting.fromJson(Map<String, Object?> json) =>
      _$AppSettingFromJson(json);
}
