import 'package:fish/l10n/generated/app_localizations.dart';
import 'package:fish/riverpods/app/navigation_index.dart';
import 'package:fish/screens/home_screen/tabs/home_tab/home_tab.dart';
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
  Widget build(BuildContext context) {
    final selectedIndex =
        ref.watch(navigationIndexProvider(widget.initialIndex));
    return Scaffold(
      body: SafeArea(
        child: [
          const HomeTab(),
          Container(),
          Container(),
          Container(),
        ][selectedIndex],
      ),
      bottomNavigationBar: NavigationBar(
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
            icon: const Icon(Icons.chat),
            label: localizations.messages,
          ),
          NavigationDestination(
            icon: const Icon(Icons.settings),
            label: localizations.setting,
          ),
        ],
      ),
    );
  }
}
