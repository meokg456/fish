import 'package:fish/const/error_codes.dart';
import 'package:fish/l10n/app_localizations.dart';

class ErrorMessages {
  static Map<String, String> getTranslations(AppLocalizations localizations) {
    return {
      ErrorCodes.accountExist: localizations.accountExistMessages,
    };
  }
}
