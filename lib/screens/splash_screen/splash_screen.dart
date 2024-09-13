import 'package:fish/app/router.dart';
import 'package:fish/riverpods/app/app_setting.dart';
import 'package:fish/riverpods/authentication/token.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

class SplashScreen extends ConsumerStatefulWidget {
  const SplashScreen({super.key});

  @override
  ConsumerState<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends ConsumerState<SplashScreen> {
  @override
  void initState() {
    super.initState();
    ref.listenManual(tokenProvider, (_, authorized) {
      context.go(authorized.value != null ? Routes.home : Routes.login);
    });
  }

  @override
  Widget build(BuildContext context) {
    final appSetting = ref.watch(appSettingProvider);
    return Scaffold(
      body: Stack(
        children: [
          Center(
            child: Image.asset(
              height: 160,
              appSetting.appIcon,
            ),
          ),
          const Align(
            alignment: Alignment.bottomCenter,
            child: Padding(
              padding: EdgeInsets.only(bottom: 160),
              child: CircularProgressIndicator(),
            ),
          ),
        ],
      ),
    );
  }
}
