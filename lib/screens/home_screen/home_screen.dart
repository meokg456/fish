import 'package:fish/l10n/generated/app_localizations.dart';
import 'package:fish/riverpods/posts.dart';
import 'package:fish/screens/home_screen/tabs/home_tab/home_tab.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:permission_handler/permission_handler.dart';

class HomeScreen extends ConsumerStatefulWidget {
  const HomeScreen({super.key});

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
    Permission.photos.request().then((value) {
      print(value);
    });
    ref.listenManual(postsProvider, (_, value) {
      if (value.hasError) {}
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: const SafeArea(
        child: HomeTab(),
      ),
      bottomNavigationBar: NavigationBar(
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
            label: localizations.chat,
          ),
          NavigationDestination(
            icon: const Icon(Icons.notifications_rounded),
            label: localizations.notification,
          ),
        ],
      ),
    );
  }
}
