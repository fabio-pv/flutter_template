import 'package:flutter/material.dart';

class TemplateUI extends StatelessWidget {
  const TemplateUI(
    this.body, {
    super.key,
  });

  final Widget body;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: body,
    );
  }
}
