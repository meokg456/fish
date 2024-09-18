import 'package:fish/l10n/generated/app_localizations.dart';
import 'package:fish/screens/home_screen/tabs/setting_tab/widgets/user_avatar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          localizations.setting,
          style: theme.textTheme.headlineSmall
              ?.copyWith(fontWeight: FontWeight.bold),
        ),
        actions: [IconButton(onPressed: () {}, icon: const Icon(Icons.search))],
      ),
      body: const SingleChildScrollView(
        padding: EdgeInsets.symmetric(horizontal: 8, vertical: 16),
        child: SizedBox(
          width: double.infinity,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              UserAvatar(),
            ],
          ),
        ),
      ),
    );
  }
}
