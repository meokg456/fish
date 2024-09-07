import 'package:intl/intl.dart';

enum Gender {
  male,
  female,
  other,
}

String? genderToJson(Gender? gender) => toBeginningOfSentenceCase(gender?.name);
