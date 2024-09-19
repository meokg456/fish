import 'dart:async';

import 'package:flutter/foundation.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:intl/intl.dart' as intl;

import 'app_localizations_en.dart';
import 'app_localizations_vi.dart';

// ignore_for_file: type=lint

/// Callers can lookup localized strings with an instance of AppLocalizations
/// returned by `AppLocalizations.of(context)`.
///
/// Applications need to include `AppLocalizations.delegate()` in their app's
/// `localizationDelegates` list, and the locales they support in the app's
/// `supportedLocales` list. For example:
///
/// ```dart
/// import 'generated/app_localizations.dart';
///
/// return MaterialApp(
///   localizationsDelegates: AppLocalizations.localizationsDelegates,
///   supportedLocales: AppLocalizations.supportedLocales,
///   home: MyApplicationHome(),
/// );
/// ```
///
/// ## Update pubspec.yaml
///
/// Please make sure to update your pubspec.yaml to include the following
/// packages:
///
/// ```yaml
/// dependencies:
///   # Internationalization support.
///   flutter_localizations:
///     sdk: flutter
///   intl: any # Use the pinned version from flutter_localizations
///
///   # Rest of dependencies
/// ```
///
/// ## iOS Applications
///
/// iOS applications define key application metadata, including supported
/// locales, in an Info.plist file that is built into the application bundle.
/// To configure the locales supported by your app, you’ll need to edit this
/// file.
///
/// First, open your project’s ios/Runner.xcworkspace Xcode workspace file.
/// Then, in the Project Navigator, open the Info.plist file under the Runner
/// project’s Runner folder.
///
/// Next, select the Information Property List item, select Add Item from the
/// Editor menu, then select Localizations from the pop-up menu.
///
/// Select and expand the newly-created Localizations item then, for each
/// locale your application supports, add a new item and select the locale
/// you wish to add from the pop-up menu in the Value field. This list should
/// be consistent with the languages listed in the AppLocalizations.supportedLocales
/// property.
abstract class AppLocalizations {
  AppLocalizations(String locale) : localeName = intl.Intl.canonicalizedLocale(locale.toString());

  final String localeName;

  static AppLocalizations of(BuildContext context) {
    return Localizations.of<AppLocalizations>(context, AppLocalizations)!;
  }

  static const LocalizationsDelegate<AppLocalizations> delegate = _AppLocalizationsDelegate();

  /// A list of this localizations delegate along with the default localizations
  /// delegates.
  ///
  /// Returns a list of localizations delegates containing this delegate along with
  /// GlobalMaterialLocalizations.delegate, GlobalCupertinoLocalizations.delegate,
  /// and GlobalWidgetsLocalizations.delegate.
  ///
  /// Additional delegates can be added by appending to this list in
  /// MaterialApp. This list does not have to be used at all if a custom list
  /// of delegates is preferred or required.
  static const List<LocalizationsDelegate<dynamic>> localizationsDelegates = <LocalizationsDelegate<dynamic>>[
    delegate,
    GlobalMaterialLocalizations.delegate,
    GlobalCupertinoLocalizations.delegate,
    GlobalWidgetsLocalizations.delegate,
  ];

  /// A list of this localizations delegate's supported locales.
  static const List<Locale> supportedLocales = <Locale>[
    Locale('en'),
    Locale('vi')
  ];

  /// No description provided for @signUp.
  ///
  /// In en, this message translates to:
  /// **'Sign Up'**
  String get signUp;

  /// No description provided for @signUpMessage.
  ///
  /// In en, this message translates to:
  /// **'It\'s quick and easy.'**
  String get signUpMessage;

  /// No description provided for @firstName.
  ///
  /// In en, this message translates to:
  /// **'First Name'**
  String get firstName;

  /// No description provided for @lastName.
  ///
  /// In en, this message translates to:
  /// **'Last Name'**
  String get lastName;

  /// No description provided for @userName.
  ///
  /// In en, this message translates to:
  /// **'Username'**
  String get userName;

  /// No description provided for @done.
  ///
  /// In en, this message translates to:
  /// **'Done'**
  String get done;

  /// No description provided for @close.
  ///
  /// In en, this message translates to:
  /// **'Close'**
  String get close;

  /// No description provided for @home.
  ///
  /// In en, this message translates to:
  /// **'Home'**
  String get home;

  /// No description provided for @video.
  ///
  /// In en, this message translates to:
  /// **'Video'**
  String get video;

  /// No description provided for @messages.
  ///
  /// In en, this message translates to:
  /// **'Messages'**
  String get messages;

  /// No description provided for @notification.
  ///
  /// In en, this message translates to:
  /// **'Notification'**
  String get notification;

  /// No description provided for @setting.
  ///
  /// In en, this message translates to:
  /// **'Setting'**
  String get setting;

  /// No description provided for @error.
  ///
  /// In en, this message translates to:
  /// **'Error'**
  String get error;

  /// No description provided for @createNewAccount.
  ///
  /// In en, this message translates to:
  /// **'Create new account'**
  String get createNewAccount;

  /// No description provided for @password.
  ///
  /// In en, this message translates to:
  /// **'Password'**
  String get password;

  /// No description provided for @login.
  ///
  /// In en, this message translates to:
  /// **'Login'**
  String get login;

  /// No description provided for @welcome.
  ///
  /// In en, this message translates to:
  /// **'Welcome!'**
  String get welcome;

  /// No description provided for @welcomeMessages.
  ///
  /// In en, this message translates to:
  /// **'to {appName}'**
  String welcomeMessages(String appName);

  /// No description provided for @doNotHaveAccount.
  ///
  /// In en, this message translates to:
  /// **'Don\'t have an account?'**
  String get doNotHaveAccount;

  /// No description provided for @accountExist.
  ///
  /// In en, this message translates to:
  /// **'Account existed'**
  String get accountExist;

  /// No description provided for @accountExistMessages.
  ///
  /// In en, this message translates to:
  /// **'Username is already registered.'**
  String get accountExistMessages;

  /// No description provided for @firstNameEmptyMessages.
  ///
  /// In en, this message translates to:
  /// **'What\'s your name?'**
  String get firstNameEmptyMessages;

  /// No description provided for @lastNameEmptyMessages.
  ///
  /// In en, this message translates to:
  /// **'What\'s your name?'**
  String get lastNameEmptyMessages;

  /// No description provided for @usernameEmptyMessages.
  ///
  /// In en, this message translates to:
  /// **'You\'ll use this when you log in'**
  String get usernameEmptyMessages;

  /// No description provided for @invalidUsername.
  ///
  /// In en, this message translates to:
  /// **'Invalid username'**
  String get invalidUsername;

  /// No description provided for @invalidPassword.
  ///
  /// In en, this message translates to:
  /// **'Invalid password'**
  String get invalidPassword;

  /// No description provided for @incorrectPasswordMessages.
  ///
  /// In en, this message translates to:
  /// **'Password is incorrect'**
  String get incorrectPasswordMessages;

  /// No description provided for @accountNotExistMessages.
  ///
  /// In en, this message translates to:
  /// **'Account is not existed'**
  String get accountNotExistMessages;

  /// No description provided for @invalidPasswordMessages.
  ///
  /// In en, this message translates to:
  /// **'Enter a password between 6 and 50 characters'**
  String get invalidPasswordMessages;

  /// No description provided for @confirmPasswordDoesNotMatchMessages.
  ///
  /// In en, this message translates to:
  /// **'Confirm password doesn\'t match'**
  String get confirmPasswordDoesNotMatchMessages;

  /// No description provided for @dateOfBirthEmptyMessages.
  ///
  /// In en, this message translates to:
  /// **'Enter your date of birth'**
  String get dateOfBirthEmptyMessages;

  /// No description provided for @dateOfBirthWrongInfoMessages.
  ///
  /// In en, this message translates to:
  /// **'It looks like you\'ve entered the wrong info.'**
  String get dateOfBirthWrongInfoMessages;

  /// No description provided for @genderEmptyMessages.
  ///
  /// In en, this message translates to:
  /// **'What\'s your gender?'**
  String get genderEmptyMessages;

  /// No description provided for @success.
  ///
  /// In en, this message translates to:
  /// **'Success'**
  String get success;

  /// No description provided for @signUpSuccessfullyMessages.
  ///
  /// In en, this message translates to:
  /// **'Your account registered successfully!'**
  String get signUpSuccessfullyMessages;

  /// No description provided for @ok.
  ///
  /// In en, this message translates to:
  /// **'OK'**
  String get ok;

  /// No description provided for @gender.
  ///
  /// In en, this message translates to:
  /// **'Gender'**
  String get gender;

  /// No description provided for @male.
  ///
  /// In en, this message translates to:
  /// **'Male'**
  String get male;

  /// No description provided for @female.
  ///
  /// In en, this message translates to:
  /// **'Female'**
  String get female;

  /// No description provided for @other.
  ///
  /// In en, this message translates to:
  /// **'Other'**
  String get other;

  /// No description provided for @learnMore.
  ///
  /// In en, this message translates to:
  /// **'Learn more'**
  String get learnMore;

  /// No description provided for @terms.
  ///
  /// In en, this message translates to:
  /// **'Terms'**
  String get terms;

  /// No description provided for @privacyPolicy.
  ///
  /// In en, this message translates to:
  /// **'Privacy Policy'**
  String get privacyPolicy;

  /// No description provided for @cookiesPolicy.
  ///
  /// In en, this message translates to:
  /// **'Cookies Policy'**
  String get cookiesPolicy;

  /// No description provided for @signUpConfirmMessage.
  ///
  /// In en, this message translates to:
  /// **'People who use our service may have uploaded your contact information to our App. Learn more'**
  String get signUpConfirmMessage;

  /// No description provided for @signUpTermAndPolicyAgreement.
  ///
  /// In en, this message translates to:
  /// **'By clicking Sign Up, you agree to our Terms, Privacy Policy and Cookies Policy. You may receive SMS notifications from us and can opt out at any time.'**
  String get signUpTermAndPolicyAgreement;

  /// No description provided for @dateOfBirth.
  ///
  /// In en, this message translates to:
  /// **'Date of birth'**
  String get dateOfBirth;

  /// No description provided for @dateMonthYear.
  ///
  /// In en, this message translates to:
  /// **'{date}'**
  String dateMonthYear(DateTime date);

  /// No description provided for @newPassword.
  ///
  /// In en, this message translates to:
  /// **'New password'**
  String get newPassword;

  /// No description provided for @confirmPassword.
  ///
  /// In en, this message translates to:
  /// **'Confirm password'**
  String get confirmPassword;

  /// No description provided for @postHint.
  ///
  /// In en, this message translates to:
  /// **'What\'s on your mind?'**
  String get postHint;

  /// No description provided for @welcomeUser.
  ///
  /// In en, this message translates to:
  /// **'Welcome back! {userName}'**
  String welcomeUser(String userName);

  /// No description provided for @createPost.
  ///
  /// In en, this message translates to:
  /// **'Create post'**
  String get createPost;

  /// No description provided for @post.
  ///
  /// In en, this message translates to:
  /// **'Share'**
  String get post;

  /// No description provided for @photoVideo.
  ///
  /// In en, this message translates to:
  /// **'Photo/Video'**
  String get photoVideo;

  /// No description provided for @public.
  ///
  /// In en, this message translates to:
  /// **'Public'**
  String get public;

  /// No description provided for @like.
  ///
  /// In en, this message translates to:
  /// **'Like'**
  String get like;

  /// No description provided for @comment.
  ///
  /// In en, this message translates to:
  /// **'Comment'**
  String get comment;

  /// No description provided for @share.
  ///
  /// In en, this message translates to:
  /// **'Share'**
  String get share;

  /// No description provided for @commentHint.
  ///
  /// In en, this message translates to:
  /// **'Write a comment...'**
  String get commentHint;
}

class _AppLocalizationsDelegate extends LocalizationsDelegate<AppLocalizations> {
  const _AppLocalizationsDelegate();

  @override
  Future<AppLocalizations> load(Locale locale) {
    return SynchronousFuture<AppLocalizations>(lookupAppLocalizations(locale));
  }

  @override
  bool isSupported(Locale locale) => <String>['en', 'vi'].contains(locale.languageCode);

  @override
  bool shouldReload(_AppLocalizationsDelegate old) => false;
}

AppLocalizations lookupAppLocalizations(Locale locale) {


  // Lookup logic when only language code is specified.
  switch (locale.languageCode) {
    case 'en': return AppLocalizationsEn();
    case 'vi': return AppLocalizationsVi();
  }

  throw FlutterError(
    'AppLocalizations.delegate failed to load unsupported locale "$locale". This is likely '
    'an issue with the localizations generation tool. Please file an issue '
    'on GitHub with a reproducible sample app and the gen-l10n configuration '
    'that was used.'
  );
}
