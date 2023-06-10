import 'package:flutter/material.dart';
import 'package:gymapp/utils/app_styles.dart';

class myDrawer extends StatelessWidget {
  const myDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        AppBar(
          backgroundColor: Styles.primaryColor,
          title: Text(
            "Hello Gymers!",
            style: TextStyle(color: Colors.white),
          ),
        )
      ],
    );
  }
}
