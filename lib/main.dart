import 'package:flutter/material.dart';
import 'package:flutter_speed_ui_app_test/views/home_ui.dart';

void main() {
  runApp(
    FlutterSpeedUi(),
  );
}

class FlutterSpeedUi extends StatefulWidget {
  const FlutterSpeedUi({super.key});

  @override
  State<FlutterSpeedUi> createState() => _FlutterSpeedUiState();
}

class _FlutterSpeedUiState extends State<FlutterSpeedUi> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomeUI(),
    );
  }
}
