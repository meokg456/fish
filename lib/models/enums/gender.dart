import 'package:intl/intl.dart';

enum Gender {
  male,
  female,
  other,
}

String? genderToJson(Gender? gender) => toBeginningOfSentenceCase(gender?.name);

Gender genderFromJson(String json) {
  switch (json) {
    case "Male":
      return Gender.male;
    case "Female":
      return Gender.male;
    default:
      return Gender.other;
  }
}
