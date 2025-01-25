import 'package:flutter/material.dart';
import 'package:forusapp/views/widgets/text_widget.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: MyTextWidget(myText: "Profile Page"),
      ),
    );
  }
}