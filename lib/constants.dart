

import 'dart:io';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class Constants {
  //Sandbox
  static String stripeSecretKey = "sk_test_51Qx5yCQJauz7vIqqZ3C67NnP3cAFGVm8neUfpjCjROnDwjLjkjTSgl6mARqGwoB3bkbDMJF4UyY0zAfB2LXD5bP100jceJD3Mn";

  //Production
  // static String stripeSecretKey = "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";



  static Future<bool> checkInternetConnection() async {
    try {
      final result = await InternetAddress.lookup('google.com');
      if (result.isNotEmpty && result[0].rawAddress.isNotEmpty) {
        if (kDebugMode) {
          print('connected');
        }
        return true;
      }
    } on SocketException catch (_) {
      if (kDebugMode) {
        print('not connected');
      }
      return false;
    }
    return false;
  }


}