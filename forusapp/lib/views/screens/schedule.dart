import 'package:flutter/material.dart';
import 'package:forusapp/views/widgets/text_widget.dart';

class SchedulePage extends StatelessWidget {
  const SchedulePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: MyTextWidget(myText: "Schedule Page"),
      ),
    );
  }
}