import 'package:intl/intl.dart' as intl;

import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Vietnamese (`vi`).
class AppLocalizationsVi extends AppLocalizations {
  AppLocalizationsVi([String locale = 'vi']) : super(locale);

  @override
  String get signUp => 'Đăng ký';

  @override
  String get signUpMessage => 'Nhanh chóng và dễ dàng.';

  @override
  String get firstName => 'Họ';

  @override
  String get lastName => 'Tên';

  @override
  String get userName => 'Tên đăng nhập';

  @override
  String get done => 'Xác nhận';

  @override
  String get close => 'Đóng';

  @override
  String get error => 'Lỗi';

  @override
  String get createNewAccount => 'Tạo tài khoản';

  @override
  String get password => 'Mật khẩu';

  @override
  String get login => 'Đăng nhập';

  @override
  String get welcome => 'Chào mừng!';

  @override
  String welcomeMessages(String appName) {
    return 'đến với $appName';
  }

  @override
  String get doNotHaveAccount => 'Chưa có tài khoản?';

  @override
  String get accountExist => 'Tài khoản đã tồn tại';

  @override
  String get accountExistMessages => 'Tên đăng nhập đã được đăng ký.';

  @override
  String get firstNameEmptyMessages => 'Tên của bạn là gì?';

  @override
  String get lastNameEmptyMessages => 'Tên của bạn là gì?';

  @override
  String get usernameEmptyMessages => 'Bạn sẽ sử dụng tên đăng nhập để đăng nhập';

  @override
  String get invalidUsername => 'Tên đăng nhập không hợp lệ';

  @override
  String get invalidPassword => 'Mật khẩu không hợp lệ';

  @override
  String get incorrectPasswordMessages => 'Mật khẩu không đúng';

  @override
  String get accountNotExistMessages => 'Tài khoản không tôn tại';

  @override
  String get invalidPasswordMessages => 'Nhập 1 chuỗi có khoảng từ 6 đến 50 ký tự';

  @override
  String get confirmPasswordDoesNotMatchMessages => 'Xác nhận mật khẩu không đúng';

  @override
  String get dateOfBirthEmptyMessages => 'Hãy nhập ngày sinh của bạn';

  @override
  String get dateOfBirthWrongInfoMessages => 'Có vẻ bạn đã nhập sai ngày sinh';

  @override
  String get genderEmptyMessages => 'Giới tính của bạn là gì?';

  @override
  String get success => 'Thành công';

  @override
  String get signUpSuccessfullyMessages => 'Tài khoản của bạn đã được đăng ký thành công!';

  @override
  String get ok => 'OK';

  @override
  String get gender => 'Giới tính';

  @override
  String get male => 'Nam';

  @override
  String get female => 'Nữ';

  @override
  String get other => 'Khác';

  @override
  String get learnMore => 'Xem thêm';

  @override
  String get terms => 'Điều khoản';

  @override
  String get privacyPolicy => 'Quy định bảo mật';

  @override
  String get cookiesPolicy => 'Quy định về Cookies';

  @override
  String get signUpConfirmMessage => 'Mọi người khi sử dụng dịch vụ của chúng tôi có thể sẽ đăng tải thông tin liên lạc lên ứng dụng của chúng tôi. Xem thêm';

  @override
  String get signUpTermAndPolicyAgreement => 'Bằng việc bấm đăng ký, bạn sẽ đồng ý với những Điều khoản, Quy định bảo mật và Quy định về Cookies. Bạn có thể sẽ nhận thông báo SMS từ chúng tôi.';

  @override
  String get dateOfBirth => 'Ngày sinh';

  @override
  String dateMonthYear(DateTime date) {
    final intl.DateFormat dateDateFormat = intl.DateFormat('dd/MM/yyyy', localeName);
    final String dateString = dateDateFormat.format(date);

    return '$dateString';
  }

  @override
  String get newPassword => 'Mật khẩu mới';

  @override
  String get confirmPassword => 'Nhập lại mật khẩu';
}
