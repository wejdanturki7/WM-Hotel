import 'package:flutter/material.dart';
import 'package:wm_hotel/widget/card_widget.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Scaffold(
        body: CardWidget(),
      ),
    );
  }
}
