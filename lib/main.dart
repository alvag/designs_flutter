import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'package:designs_flutter/src/pages/buttons_page.dart';
import 'package:designs_flutter/src/pages/scroll_page.dart';
import 'package:designs_flutter/src/pages/basic_page.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle.light
        .copyWith(statusBarColor: Colors.transparent));

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Diseños',
      initialRoute: 'buttons',
      routes: {
        'basic': (context) => BasicPage(),
        'scroll': (context) => ScrollPage(),
        'buttons': (context) => ButtonsPage()
      },
    );
  }
}
