import 'package:flutter/cupertino.dart';
import 'package:underwater_discover_appdevdiva/screens/flip_card_animation/flip_card_animation.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const CupertinoApp(
      debugShowCheckedModeBanner: false,
      home: FlipCardAnimation(),
    );
  }
}
