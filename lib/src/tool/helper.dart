import 'dart:developer';

import 'package:flutter/foundation.dart';
import 'package:url_launcher/url_launcher.dart';

class Helper{
  static Future<void> openUrl(String url) async {
    final uri = Uri.parse(url);
    try {
      (kIsWeb)
          ? await launchUrl(uri)
          : await canLaunchUrl(uri)
          ? await launchUrl(uri)
          : throw 'Could not open the map.';
    } catch (e, stackTrace) {
      log("Helper - Helper.openUrl: ${e.runtimeType}",stackTrace: stackTrace);
    }
  }
}