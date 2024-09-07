import 'package:fish/screens/authentication/sign_up/confirm_password_text_field.dart';
import 'package:fish/screens/authentication/sign_up/date_of_birth_text_field.dart';
import 'package:fish/screens/authentication/sign_up/first_name_text_field.dart';
import 'package:fish/screens/authentication/sign_up/gender_text_field.dart';
import 'package:fish/screens/authentication/sign_up/last_name_text_field.dart';
import 'package:fish/screens/authentication/sign_up/password_text_field.dart';
import 'package:fish/screens/authentication/sign_up/sign_up_button.dart';
import 'package:fish/screens/authentication/sign_up/user_name_text_field.dart';
import 'package:fish/utils/utils.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class SignUpScreen extends ConsumerStatefulWidget {
  const SignUpScreen({super.key});

  @override
  ConsumerState createState() => _SignUpScreenState();
}

class _SignUpScreenState extends ConsumerState<SignUpScreen> {
  late final AppLocalizations localizations;
  late final ThemeData theme;

  @override
  void didChangeDependencies() {
    localizations = AppLocalizations.of(context);
    theme = Theme.of(context);
    super.didChangeDependencies();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            width: double.infinity,
            padding: EdgeInsets.symmetric(
              horizontal: Utils.horizontalPadding(context),
              vertical: 16,
            ),
            child: Column(
              children: [
                Card(
                  margin: EdgeInsets.zero,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        padding: const EdgeInsets.all(16),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  localizations.signUp,
                                  style: theme.textTheme.headlineLarge
                                      ?.copyWith(fontWeight: FontWeight.bold),
                                ),
                                const SizedBox(height: 4),
                                Text(
                                  localizations.signUpMessage,
                                  style: theme.textTheme.bodyLarge,
                                ),
                              ],
                            ),
                            IconButton(
                              onPressed: () {},
                              icon: const Icon(Icons.close),
                            ),
                          ],
                        ),
                      ),
                      const Divider(),
                      Container(
                        padding: const EdgeInsets.all(16),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Row(
                              children: [
                                Expanded(
                                  child: FirstNameTextField(),
                                ),
                                SizedBox(width: 16),
                                Expanded(
                                  child: LastNameTextField(),
                                ),
                              ],
                            ),
                            const SizedBox(height: 16),
                            const UserNameTextField(),
                            const SizedBox(height: 16),
                            const PasswordTextField(),
                            const SizedBox(height: 16),
                            const ConfirmPasswordTextField(),
                            const SizedBox(height: 16),
                            const Row(
                              children: [
                                Expanded(
                                  child: DateOfBirthTextField(),
                                ),
                                SizedBox(width: 16),
                                Expanded(
                                  child: GenderTextField(),
                                ),
                              ],
                            ),
                            const SizedBox(height: 16),
                            Text(
                              localizations.signUpConfirmMessage,
                              style: theme.textTheme.bodySmall,
                            ),
                            const SizedBox(height: 16),
                            Text(
                              localizations.signUpTermAndPolicyAgreement,
                              style: theme.textTheme.bodySmall,
                            ),
                            const SizedBox(height: 32),
                            const Align(
                              alignment: Alignment.center,
                              child: SignUpButton(),
                            ),
                            const SizedBox(height: 16),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
