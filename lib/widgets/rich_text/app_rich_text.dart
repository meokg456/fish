import 'package:flutter/material.dart';

class AppRichText extends StatelessWidget {
  const AppRichText({
    super.key,
    required this.sourceText,
    required this.replaces,
    this.style,
  });

  final String sourceText;
  final Map<String, InlineSpan> replaces;
  final TextStyle? style;

  List<InlineSpan> splitTextSpan(
    TextSpan textSpan,
    MapEntry<String, InlineSpan> replace,
  ) {
    final text = textSpan.text;
    if (text == null) {
      return [];
    }
    if (!text.contains(replace.key) || replace.key == '') {
      return [textSpan];
    }
    final result = <InlineSpan>[];
    final tokens = text.split(replace.key);
    for (int i = 0; i < tokens.length; i++) {
      result.add(TextSpan(text: tokens[i], style: style));
      if (i != tokens.length - 1) {
        result.add(replace.value);
      }
    }
    return result;
  }

  List<InlineSpan> splitTextIntoInlineSpans() {
    List<InlineSpan> inlineSpans = [TextSpan(text: sourceText, style: style)];

    for (final replace in replaces.entries) {
      final List<InlineSpan> splitSpans = [];

      for (final inlineSpan in inlineSpans) {
        if (inlineSpan is TextSpan) {
          splitSpans.addAll(splitTextSpan(inlineSpan, replace));
        } else {
          splitSpans.add(inlineSpan);
        }
      }
      inlineSpans = splitSpans;
    }
    return inlineSpans;
  }

  @override
  Widget build(BuildContext context) {
    return RichText(
      text: TextSpan(
        children: splitTextIntoInlineSpans(),
      ),
    );
  }
}
