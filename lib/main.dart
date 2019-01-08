import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'common/styles.dart';
import 'widgets/index.dart';

// 入口
void main() {
  // 禁止横向模式
  SystemChrome.setPreferredOrientations(
    [DeviceOrientation.portraitUp, DeviceOrientation.portraitDown]
  ).then((_) => runApp(new FlutterBoilerplateApp()));
}

class FlutterBoilerplateApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final defaultTheme = new ThemeData(
        fontFamily: "Source Han Sans",
        textTheme: Theme.of(context).textTheme.apply(
            bodyColor: AppColor.textColorDark,
            displayColor: AppColor.textColorLight
        )
    );
    return MaterialApp(
      title: 'Flutter Boilerplate App',
      debugShowCheckedModeBanner: false,
      theme: defaultTheme,
      home: Scaffold(
        appBar: AppBar(
          title: Text("Hello App"),
        ),
        body: Center(
          child: Loading(),
        ),
      )
    );
  }
}