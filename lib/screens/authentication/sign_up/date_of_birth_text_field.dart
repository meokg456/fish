import 'package:fish/riverpods/sign_up.dart';
import 'package:fish/widgets/app_cupertino_date_picker.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

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
    ref.listenManual(signUpProvider.select((it) => it.dateOfBirth), (_, date) {
      controller.text = localizations.dateMonthYear(date ?? DateTime.now());
    });
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    localizations = AppLocalizations.of(context);
  }

  void showCalendar(BuildContext context, WidgetRef ref) {
    final initialDate = ref.read(signUpProvider.select((it) => it.dateOfBirth));
    showCupertinoModalPopup(
      context: context,
      builder: (context) => AppCupertinoDatePicker(
        initialDate: initialDate,
        onDone: (value) {
          final form = ref.read(signUpProvider);
          ref
              .read(signUpProvider.notifier)
              .updateForm(form.copyWith(dateOfBirth: value));
        },
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    final localizations = AppLocalizations.of(context);

    return TextFormField(
      controller: controller,
      readOnly: true,
      onTap: () => showCalendar(context, ref),
      decoration: InputDecoration(
        hintText: localizations.dateOfBirth,
        suffixIcon: const Icon(Icons.calendar_month),
      ),
    );
  }
}
