import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'app.dart';

// 入口
void main() {
  // 禁止横向模式
  SystemChrome.setPreferredOrientations(
    [DeviceOrientation.portraitUp, DeviceOrientation.portraitDown]
  ).then((_) => runApp(new FlutterBoilerplateApp()));
}
