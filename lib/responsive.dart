import 'dart:io';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

double getHeight(context) {
  return MediaQuery.of(context).size.height;
}

double getWidth(context) {
  return MediaQuery.of(context).size.width;
}

double getResponsive(context) {
  return MediaQuery.of(context).size.height * 0.001;
}

double getResponsiveText(context) {
  if (kIsWeb) {
    return 0.85; // for web
  } else if (Platform.isAndroid) {
    return 0.8;
  } else if (Platform.isIOS) {
    return 0.9;
  } else {
    return 0.85; // Default for other platforms (e.g., Windows, macOS)
  }
}

bool isMobile(BuildContext context) => MediaQuery.of(context).size.width < 600;

bool isTablet(BuildContext context) =>
    MediaQuery.of(context).size.width >= 600 &&
    MediaQuery.of(context).size.width < 1200;

bool isDesktop(BuildContext context) =>
    MediaQuery.of(context).size.width >= 1200;
