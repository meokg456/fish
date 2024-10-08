import 'package:intl/intl.dart' as intl;

import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for English (`en`).
class AppLocalizationsEn extends AppLocalizations {
  AppLocalizationsEn([String locale = 'en']) : super(locale);

  @override
  String get signUp => 'Sign Up';

  @override
  String get signUpMessage => 'It\'s quick and easy.';

  @override
  String get firstName => 'First Name';

  @override
  String get lastName => 'Last Name';

  @override
  String get userName => 'Username';

  @override
  String get done => 'Done';

  @override
  String get close => 'Close';

  @override
  String get home => 'Home';

  @override
  String get video => 'Video';

  @override
  String get messages => 'Messages';

  @override
  String get notification => 'Notification';

  @override
  String get setting => 'Setting';

  @override
  String get error => 'Error';

  @override
  String get createNewAccount => 'Create new account';

  @override
  String get password => 'Password';

  @override
  String get login => 'Login';

  @override
  String get welcome => 'Welcome!';

  @override
  String welcomeMessages(String appName) {
    return 'to $appName';
  }

  @override
  String get doNotHaveAccount => 'Don\'t have an account?';

  @override
  String get accountExist => 'Account existed';

  @override
  String get accountExistMessages => 'Username is already registered.';

  @override
  String get firstNameEmptyMessages => 'What\'s your name?';

  @override
  String get lastNameEmptyMessages => 'What\'s your name?';

  @override
  String get usernameEmptyMessages => 'You\'ll use this when you log in';

  @override
  String get invalidUsername => 'Invalid username';

  @override
  String get invalidPassword => 'Invalid password';

  @override
  String get incorrectPasswordMessages => 'Password is incorrect';

  @override
  String get accountNotExistMessages => 'Account is not existed';

  @override
  String get invalidPasswordMessages => 'Enter a password between 6 and 50 characters';

  @override
  String get confirmPasswordDoesNotMatchMessages => 'Confirm password doesn\'t match';

  @override
  String get dateOfBirthEmptyMessages => 'Enter your date of birth';

  @override
  String get dateOfBirthWrongInfoMessages => 'It looks like you\'ve entered the wrong info.';

  @override
  String get genderEmptyMessages => 'What\'s your gender?';

  @override
  String get success => 'Success';

  @override
  String get signUpSuccessfullyMessages => 'Your account registered successfully!';

  @override
  String get ok => 'OK';

  @override
  String get gender => 'Gender';

  @override
  String get male => 'Male';

  @override
  String get female => 'Female';

  @override
  String get other => 'Other';

  @override
  String get learnMore => 'Learn more';

  @override
  String get terms => 'Terms';

  @override
  String get privacyPolicy => 'Privacy Policy';

  @override
  String get cookiesPolicy => 'Cookies Policy';

  @override
  String get signUpConfirmMessage => 'People who use our service may have uploaded your contact information to our App. Learn more';

  @override
  String get signUpTermAndPolicyAgreement => 'By clicking Sign Up, you agree to our Terms, Privacy Policy and Cookies Policy. You may receive SMS notifications from us and can opt out at any time.';

  @override
  String get dateOfBirth => 'Date of birth';

  @override
  String dateMonthYear(DateTime date) {
    final intl.DateFormat dateDateFormat = intl.DateFormat('dd/MM/yyyy', localeName);
    final String dateString = dateDateFormat.format(date);

    return '$dateString';
  }

  @override
  String get newPassword => 'New password';

  @override
  String get confirmPassword => 'Confirm password';

  @override
  String get postHint => 'What\'s on your mind?';

  @override
  String welcomeUser(String userName) {
    return 'Welcome back! $userName';
  }

  @override
  String get createPost => 'Create post';

  @override
  String get post => 'Share';

  @override
  String get photoVideo => 'Photo/Video';

  @override
  String get public => 'Public';

  @override
  String get like => 'Like';

  @override
  String get comment => 'Comment';

  @override
  String get share => 'Share';

  @override
  String get commentHint => 'Write a comment...';

  @override
  String get confirm => 'Confirm';

  @override
  String get cancel => 'Cancel';

  @override
  String get logout => 'Logout';

  @override
  String get logoutConfirmation => 'Are you sure you want to logout?';

  @override
  String get detail => 'Detail';

  @override
  String get yourPosts => 'Your posts';

  @override
  String get addFriend => 'Add friend';

  @override
  String get friend => 'Friend';
}
