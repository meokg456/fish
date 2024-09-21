import 'package:fish/app/router.dart';
import 'package:fish/l10n/generated/app_localizations.dart';
import 'package:fish/riverpods/authentication/token.dart';
import 'package:fish/riverpods/user/user.dart';
import 'package:fish/screens/home_screen/tabs/setting_tab/widgets/user_avatar.dart';
import 'package:fish/widgets/dialog/confirm_dialog.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

class SettingTab extends ConsumerStatefulWidget {
  const SettingTab({super.key});

  @override
  ConsumerState createState() => _SettingTabState();
}

class _SettingTabState extends ConsumerState<SettingTab> {
  late AppLocalizations localizations;
  late ThemeData theme;

  @override
  void didChangeDependencies() {
    localizations = AppLocalizations.of(context);
    theme = Theme.of(context);
    super.didChangeDependencies();
  }

  void logout() {
    showDialog(
      context: context,
      builder: (context) => ConfirmDialog(
        title: localizations.logout,
        content: localizations.logoutConfirmation,
      ),
    ).then((value) {
      if (value == true) {
        ref.read(userProvider.notifier).logout();
        if (mounted) {
          context.go(Routes.login);
        }
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          localizations.setting,
          style: theme.textTheme.headlineSmall
              ?.copyWith(fontWeight: FontWeight.bold),
        ),
        actions: [
          IconButton(
            onPressed: logout,
            icon: const Icon(Icons.logout),
            style:
                IconButton.styleFrom(foregroundColor: theme.colorScheme.error),
          )
        ],
      ),
      body: const SingleChildScrollView(
        padding: EdgeInsets.symmetric(horizontal: 8, vertical: 16),
        child: SizedBox(
          width: double.infinity,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              AvatarSetting(),
            ],
          ),
        ),
      ),
    );
  }
}
