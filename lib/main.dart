import 'package:flutter/material.dart';

import 'package:designs_flutter/src/pages/basic_page.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Diseños',
      initialRoute: 'basic',
      routes: {
        'basic': (context) => BasicPage(),
      },
    );
  }
}
