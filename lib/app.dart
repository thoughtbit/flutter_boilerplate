import 'package:flutter/material.dart';
import 'common/styles.dart';
import 'widgets/index.dart';

class FlutterBoilerplateApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final defaultTheme = new ThemeData(
      fontFamily: "Source Han Sans",
      textTheme: Theme.of(context).textTheme.apply(
        bodyColor: AppColor.textColorDark,
        displayColor: AppColor.textColorLight,
      ),
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
      ),
    );
  }
}