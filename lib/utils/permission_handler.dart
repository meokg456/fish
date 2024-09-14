import 'package:permission_handler/permission_handler.dart';

class PermissionHandler {
  static Future<bool> request(Permission permission) async {
    if (await permission.isPermanentlyDenied) {
      openAppSettings();
      return false;
    }
    final status = await permission.request();
    if (status.isGranted || status.isLimited) {
      return true;
    }
    return false;
  }
}
