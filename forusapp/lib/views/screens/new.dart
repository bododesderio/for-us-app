import 'package:flutter/material.dart';
import 'package:forusapp/views/widgets/text_widget.dart';

class NewPage extends StatelessWidget {
  const NewPage({super.key});

  @override
  Widget build(BuildContext context) {
   return Scaffold(
      body: Center(
        child: MyTextWidget(myText: "Settings Page"),
      ),
    );
  }
}