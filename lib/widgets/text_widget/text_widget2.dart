import 'package:dice/widgets/text_widget/text.dart';
import 'package:flutter/material.dart';

class CustomText2 extends StatelessWidget {
  final String text;
  const CustomText2({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return CustomText(
      text: text,
      size: 15.0,
      color: Colors.brown,
      fontWeight: FontWeight.w400,
    );
  }
}
