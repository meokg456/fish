import 'package:fish/screens/authentication/sign_up/confirm_password_text_field.dart';
import 'package:fish/screens/authentication/sign_up/date_of_birth_text_field.dart';
import 'package:fish/screens/authentication/sign_up/first_name_text_field.dart';
import 'package:fish/screens/authentication/sign_up/gender_text_field.dart';
import 'package:fish/screens/authentication/sign_up/last_name_text_field.dart';
import 'package:fish/screens/authentication/sign_up/password_text_field.dart';
import 'package:fish/screens/authentication/sign_up/sign_up_button.dart';
import 'package:fish/screens/authentication/sign_up/user_name_text_field.dart';
import 'package:fish/utils/utils.dart';
import 'package:fish/widgets/rich_text/app_rich_text.dart';
import 'package:fish/widgets/rich_text/hyperlink_span.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:fish/l10n/app_localizations.dart';

class SignUpScreen extends ConsumerStatefulWidget {
  const SignUpScreen({super.key});

  @override
  ConsumerState createState() => _SignUpScreenState();
}

class _SignUpScreenState extends ConsumerState<SignUpScreen> {
  late final AppLocalizations localizations;
  late final ThemeData theme;
  final _formKey = GlobalKey<FormState>();

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
                  child: Form(
                    key: _formKey,
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
                                crossAxisAlignment: CrossAxisAlignment.start,
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
                                crossAxisAlignment: CrossAxisAlignment.start,
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
                              AppRichText(
                                sourceText: localizations.signUpConfirmMessage,
                                style: theme.textTheme.bodySmall,
                                replaces: {
                                  localizations.learnMore: HyperlinkSpan(
                                    text: localizations.learnMore,
                                    url: 'https://www.google.com/',
                                    style: theme.textTheme.bodySmall?.copyWith(
                                      color: theme.colorScheme.primary,
                                    ),
                                  ),
                                },
                              ),
                              const SizedBox(height: 16),
                              AppRichText(
                                sourceText:
                                    localizations.signUpTermAndPolicyAgreement,
                                style: theme.textTheme.bodySmall,
                                replaces: {
                                  localizations.terms: HyperlinkSpan(
                                    text: localizations.terms,
                                    url: 'https://www.google.com/',
                                    style: theme.textTheme.bodySmall?.copyWith(
                                      color: theme.colorScheme.primary,
                                    ),
                                  ),
                                  localizations.privacyPolicy: HyperlinkSpan(
                                    text: localizations.privacyPolicy,
                                    url: 'https://www.google.com/',
                                    style: theme.textTheme.bodySmall?.copyWith(
                                      color: theme.colorScheme.primary,
                                    ),
                                  ),
                                  localizations.cookiesPolicy: HyperlinkSpan(
                                    text: localizations.cookiesPolicy,
                                    url: 'https://www.google.com/',
                                    style: theme.textTheme.bodySmall?.copyWith(
                                      color: theme.colorScheme.primary,
                                    ),
                                  ),
                                },
                              ),
                              const SizedBox(height: 32),
                              Align(
                                alignment: Alignment.center,
                                child: SignUpButton(_formKey),
                              ),
                              const SizedBox(height: 16),
                            ],
                          ),
                        ),
                      ],
                    ),
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
