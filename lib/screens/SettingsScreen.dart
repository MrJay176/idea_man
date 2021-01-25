import 'package:flutter/material.dart';
import 'package:idea_man/screens/SettingsScreenBody.dart';

class SettingsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
          resizeToAvoidBottomInset:false,
          resizeToAvoidBottomPadding: false,
          body: SingleChildScrollView(child: SettingsScreenBody())),
    );
  }
}
