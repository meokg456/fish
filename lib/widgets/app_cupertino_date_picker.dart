import 'package:fish/utils/utils.dart';
import 'package:fish/widgets/all_type_scroll_behavior.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fish/l10n/generated/app_localizations.dart';
import 'package:go_router/go_router.dart';

class AppCupertinoDatePicker extends StatelessWidget {
  const AppCupertinoDatePicker({
    super.key,
    this.onDone,
    this.onChanged,
    this.initialDate,
  });

  final void Function(DateTime date)? onDone;
  final void Function(DateTime date)? onChanged;
  final DateTime? initialDate;

  @override
  Widget build(BuildContext context) {
    final localizations = AppLocalizations.of(context);
    DateTime date = DateTime.now();
    return ScrollConfiguration(
      behavior: AllTypeScrollBehavior(),
      child: Container(
        height: 216,
        color: Theme.of(context).dialogBackgroundColor,
        padding: EdgeInsets.symmetric(
          vertical: 6,
          horizontal: Utils.horizontalPadding(context),
        ),
        margin: EdgeInsets.only(
          bottom: MediaQuery.of(context).viewInsets.bottom,
        ),
        child: SafeArea(
          top: false,
          child: Column(
            children: [
              Align(
                alignment: Alignment.centerRight,
                child: TextButton(
                  onPressed: () {
                    onDone?.call(date);
                    context.pop();
                  },
                  child: Text(localizations.done),
                ),
              ),
              Expanded(
                child: CupertinoDatePicker(
                  initialDateTime: initialDate,
                  onDateTimeChanged: (dateTime) {
                    date = dateTime;
                    onChanged?.call(dateTime);
                  },
                  mode: CupertinoDatePickerMode.date,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
