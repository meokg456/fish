import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';

class Utils {
  static String timeSpendFromCreated(DateTime createTime) {
    int timeSpendSeconds = DateTime.now().second - createTime.second;

    int day = (timeSpendSeconds ~/ (24 * 60 * 60));
    if (day > 0) {
      return "${day}d ago";
    }

    timeSpendSeconds = timeSpendSeconds - day * (24 * 60 * 60);
    int hour = timeSpendSeconds ~/ (60 * 60);
    if (hour > 0) {
      return "${hour}h ago";
    }

    timeSpendSeconds = timeSpendSeconds - hour * (60 * 60);
    int minute = timeSpendSeconds ~/ 60;
    if (minute > 0) {
      return "${minute}m ago";
    }

    return "now";
  }

  static double horizontalPadding(BuildContext context) {
    final screenSize = MediaQuery.sizeOf(context);
    return getValueForScreenType<double>(
      context: context,
      mobile: 16,
      tablet: 118,
      desktop: screenSize.width * 0.25,
    );
  }
}
