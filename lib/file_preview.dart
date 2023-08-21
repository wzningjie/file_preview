import 'dart:async';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

part 'file_preview_widget.dart';

part 'file_preview_callback.dart';

part 'file_preview_controller.dart';

class FilePreview {
  static const MethodChannel _channel = MethodChannel('file_preview');

  static Future<bool> initTBS({
    required String license,
  }) async {
    return await _channel.invokeMethod('initTBS', {
      "license": license,
    });
  }

  static Future<bool> tbsHasInit() async {
    return await _channel.invokeMethod('tbsHasInit');
  }

  static Future<bool> deleteCache() async {
    return await _channel.invokeMethod('deleteCache');
  }

  static Future<String> tbsVersion() async {
    return await _channel.invokeMethod('tbsVersion');
  }
}
