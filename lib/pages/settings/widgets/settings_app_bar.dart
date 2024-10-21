import 'package:flutter/material.dart';
import 'package:ulearning_app/common/widgets/reusable_text.dart';

AppBar buildSettingsAppBar() {
  return AppBar(
    centerTitle: true,
    title: Container(
      child: Container(
        child: const ReusableText(text: 'Settings'),
      ),
    ),
  );
}
