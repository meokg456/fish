import 'package:fish/riverpods/enums/validate_errors.dart';
import 'package:fish/riverpods/sign_up.dart';
import 'package:fish/widgets/date_picker/app_cupertino_date_picker.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:fish/l10n/generated/app_localizations.dart';

class DateOfBirthTextField extends ConsumerStatefulWidget {
  const DateOfBirthTextField({super.key});

  @override
  ConsumerState<DateOfBirthTextField> createState() =>
      _DateOfBirthTextFieldState();
}

class _DateOfBirthTextFieldState extends ConsumerState<DateOfBirthTextField> {
  TextEditingController controller = TextEditingController();
  late AppLocalizations localizations;

  @override
  void initState() {
    super.initState();
    ref.listenManual(signUpProvider.select((it) => it.valueOrNull?.dateOfBirth),
        (_, date) {
      controller.text = localizations.dateMonthYear(date ?? DateTime.now());
    });
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    localizations = AppLocalizations.of(context);
  }

  void showCalendar(BuildContext context, WidgetRef ref) {
    final initialDate =
        ref.read(signUpProvider.select((it) => it.requireValue.dateOfBirth));
    showCupertinoModalPopup(
      context: context,
      builder: (context) => AppCupertinoDatePicker(
        initialDate: initialDate,
        onDone: (value) {
          final form = ref.read(signUpProvider);
          ref.read(signUpProvider.notifier).updateForm(
                form.requireValue.copyWith(dateOfBirth: value.toUtc()),
              );
        },
      ),
    );
  }

  String? validate(AppLocalizations localizations, WidgetRef ref) {
    final error = ref.read(signUpProvider.notifier).validateDateOfBirth();
    if (error == ValidateErrors.empty) {
      return localizations.dateOfBirthEmptyMessages;
    }
    if (error == ValidateErrors.invalid) {
      return localizations.dateOfBirthWrongInfoMessages;
    }
    return null;
  }

  @override
  Widget build(BuildContext context) {
    final localizations = AppLocalizations.of(context);

    return TextFormField(
      controller: controller,
      readOnly: true,
      onTap: () => showCalendar(context, ref),
      autovalidateMode: AutovalidateMode.onUserInteraction,
      validator: (value) => validate(localizations, ref),
      decoration: InputDecoration(
        hintText: localizations.dateOfBirth,
        suffixIcon: const Icon(Icons.calendar_month),
      ),
    );
  }
}
