import 'package:fish/l10n/generated/app_localizations.dart';
import 'package:fish/riverpods/app/navigation_index.dart';
import 'package:fish/riverpods/user/user.dart';
import 'package:fish/screens/home_screen/tabs/friend_tab/friend_tab.dart';
import 'package:fish/screens/home_screen/tabs/home_tab/home_tab.dart';
import 'package:fish/screens/home_screen/tabs/setting_tab/setting_tab.dart';
import 'package:fish/utils/utils.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class HomeScreen extends ConsumerStatefulWidget {
  const HomeScreen({super.key, this.initialIndex = 0});

  final int initialIndex;

  @override
  ConsumerState createState() => _HomeScreenState();
}

class _HomeScreenState extends ConsumerState<HomeScreen> {
  late AppLocalizations localizations;
  late ThemeData theme;

  @override
  void didChangeDependencies() {
    localizations = AppLocalizations.of(context);
    theme = Theme.of(context);
    super.didChangeDependencies();
  }

  @override
  void initState() {
    super.initState();
    ref.listenManual(userProvider, (_, userModel) {
      if (userModel is AsyncData) {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            content: Text(
              localizations.welcomeUser(userModel.requireValue.nickName),
            ),
          ),
        );
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    final selectedIndex =
        ref.watch(navigationIndexProvider(widget.initialIndex));
    return Scaffold(
      body: SafeArea(
        child: [
          const HomeTab(),
          Container(),
          const FriendTab(),
          const SettingTab(),
        ][selectedIndex],
      ),
      bottomNavigationBar: Container(
        color: theme.colorScheme.surfaceContainer,
        padding: EdgeInsets.symmetric(
          horizontal: Utils.horizontalPaddingForAppBar(context),
        ),
        child: NavigationBar(
          selectedIndex: selectedIndex,
          onDestinationSelected: ref
              .read(navigationIndexProvider(widget.initialIndex).notifier)
              .updateIndex,
          destinations: [
            NavigationDestination(
              icon: const Icon(Icons.home),
              label: localizations.home,
            ),
            NavigationDestination(
              icon: const Icon(Icons.ondemand_video),
              label: localizations.video,
            ),
            NavigationDestination(
              icon: const Icon(Icons.people),
              label: localizations.friend,
            ),
            NavigationDestination(
              icon: const Icon(Icons.settings),
              label: localizations.setting,
            ),
          ],
        ),
      ),
    );
  }
}
