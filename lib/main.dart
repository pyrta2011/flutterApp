import 'package:flutter/material.dart';
import 'components/title.dart';
import 'components/image.dart';

main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: ListView(
          children: [ImageWidget(), TitleWidget()],
        ),
      ),
    );
  }
}
