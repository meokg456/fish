import 'package:fish/app/router.dart';
import 'package:fish/gen/assets.gen.dart';
import 'package:fish/l10n/generated/app_localizations.dart';
import 'package:fish/riverpods/app_setting.dart';
import 'package:fish/riverpods/login.dart';
import 'package:fish/riverpods/side_effect_performer.dart';
import 'package:fish/screens/authentication/login/widgets/create_account_button.dart';
import 'package:fish/screens/authentication/login/widgets/login_button.dart';
import 'package:fish/screens/authentication/login/widgets/password_text_field.dart';
import 'package:fish/screens/authentication/login/widgets/user_name_text_field.dart';
import 'package:fish/widgets/rich_text/app_rich_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:responsive_builder/responsive_builder.dart';

class LoginScreen extends ConsumerStatefulWidget {
  const LoginScreen({super.key});

  @override
  ConsumerState<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends ConsumerState<LoginScreen> {
  late AppLocalizations localizations;
  late ThemeData theme;
  final _formKey = GlobalKey<FormState>();
  final buttonKey = GlobalKey();

  @override
  void didChangeDependencies() {
    localizations = AppLocalizations.of(context);
    theme = Theme.of(context);
    super.didChangeDependencies();
  }

  @override
  void initState() {
    super.initState();
    ref.listenManual(sideEffectPerformerProvider(loginSideEffectId),
        (_, state) {
      if (state is AsyncData) {
        context.pushReplacement(Routes.home);
      }
    });
  }

  void ensureLoginButtonVisible() {
    Scrollable.ensureVisible(buttonKey.currentContext!);
  }

  void onSubmit() {
    if (_formKey.currentState?.validate() ?? false) {
      ref
          .read(sideEffectPerformerProvider(loginSideEffectId).notifier)
          .perform(ref.read(loginProvider.notifier).login);
    }
  }

  @override
  Widget build(BuildContext context) {
    final appSetting = ref.watch(appSettingProvider);
    ref.watch(loginProvider);
    final size = MediaQuery.sizeOf(context);
    return Scaffold(
      body: SafeArea(
        child: Row(
          children: [
            if (size.width > 1080)
              Expanded(
                child: Container(
                  height: double.infinity,
                  padding: const EdgeInsets.all(32),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(28),
                    child: Image.asset(
                      fit: BoxFit.fill,
                      Assets.images.underwater.keyName,
                    ),
                  ),
                ),
              ),
            Expanded(
              child: SingleChildScrollView(
                padding: EdgeInsets.symmetric(
                  horizontal: getValueForScreenType(
                    context: context,
                    mobile: 16,
                    tablet: 96,
                  ),
                  vertical: 96,
                ),
                child: Column(
                  children: [
                    Form(
                      key: _formKey,
                      child: Column(
                        children: [
                          Image.asset(
                            appSetting.appIcon,
                            height: 200,
                          ),
                          const SizedBox(height: 16),
                          Text(
                            localizations.welcome,
                            style: theme.textTheme.displayMedium,
                          ),
                          AppRichText(
                            sourceText: localizations
                                .welcomeMessages(appSetting.appName),
                            style: theme.textTheme.displayMedium,
                            replaces: {
                              appSetting.appName: TextSpan(
                                text: appSetting.appName,
                                style: theme.textTheme.displayMedium?.copyWith(
                                  color: theme.colorScheme.primary,
                                ),
                              ),
                            },
                          ),
                          const SizedBox(height: 32),
                          Align(
                            alignment: Alignment.centerLeft,
                            child: Text(
                              localizations.userName,
                              style: theme.textTheme.titleMedium
                                  ?.copyWith(fontWeight: FontWeight.bold),
                            ),
                          ),
                          const SizedBox(height: 4),
                          UserNameTextField(
                            onTap: ensureLoginButtonVisible,
                          ),
                          const SizedBox(height: 16),
                          Align(
                            alignment: Alignment.centerLeft,
                            child: Text(
                              localizations.password,
                              style: theme.textTheme.titleMedium
                                  ?.copyWith(fontWeight: FontWeight.bold),
                            ),
                          ),
                          const SizedBox(height: 4),
                          PasswordTextField(
                            onSubmit: onSubmit,
                            onTap: ensureLoginButtonVisible,
                          ),
                          const SizedBox(height: 32),
                          LoginButton(
                            key: buttonKey,
                            onSubmit: onSubmit,
                          ),
                          const SizedBox(height: 16),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                localizations.doNotHaveAccount,
                                style: theme.textTheme.titleMedium,
                              ),
                              const CreateAccountButton(),
                            ],
                          ),
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
    );
  }
}
