import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class HyperlinkSpan extends TextSpan {
  HyperlinkSpan({required String super.text, required String url, super.style})
      : super(
          recognizer: TapGestureRecognizer()
            ..onTap = () => launchUrl(Uri.parse(url)),
        );
}
