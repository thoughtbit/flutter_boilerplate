import 'package:flutter/cupertino.dart';
import 'package:flutter/widgets.dart';
import 'package:url_launcher/url_launcher.dart';

class NavigatorHelper {
  // push
  static void push(BuildContext context, WidgetBuilder builder, {
    String pageName,
    ValueChanged<String> whenComplete
  }) {
    if (context == null || builder == null) return;
    Navigator.push(
      context, 
      new CupertinoPageRoute(builder: builder)).whenComplete(() {
        if (whenComplete != null) {
          whenComplete(null);
        }
      }
    );
  }

  // url launcher
  static void launcherInBrowser(String url, { String title }) async {
    if (await canLaunch(url)) {
      await launch(url, forceSafariVC: false, forceWebView: false);
    } else {
      throw 'Could not launch $url';
    }
  }
}