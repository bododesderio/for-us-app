import 'package:flutter/material.dart';
import 'package:forusapp/views/widgets/text_widget.dart';

class NotificationPage extends StatelessWidget {
  const NotificationPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: MyTextWidget(myText: "Notification Page"),
      ),
    );
  }
}