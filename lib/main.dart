import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart' show kIsWeb;

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    String platformName = 'Unknown Platform';

    if (kIsWeb) {
      platformName = 'Web';
    } else if (Theme.of(context).platform == TargetPlatform.iOS) {
      platformName = 'iOS';
    } else if (Theme.of(context).platform == TargetPlatform.android) {
      platformName = 'Android';
    } else if (Theme.of(context).platform == TargetPlatform.windows) {
      platformName = 'Windows';
    } else if (Theme.of(context).platform == TargetPlatform.linux) {
      platformName = 'Linux';
    } else if (Theme.of(context).platform == TargetPlatform.macOS) {
      platformName = 'macOS';
    }

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Platform Detection'),
        ),
        body: Center(
          child: Text(
            'Platform: $platformName',
            style: TextStyle(fontSize: 20.0),
          ),
        ),
      ),
    );
  }
}