import 'package:dice/util/constant/color.dart';
import 'package:dice/widgets/text_widget/text.dart';
import 'package:flutter/material.dart';

class ButtonWidget extends StatelessWidget {
  final String text;
  final double textSize;
  final Function() onPressed;
  const ButtonWidget({
    super.key,
    required this.textSize,
    required this.onPressed,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        foregroundColor: Colors.white,
        backgroundColor: AppColors.backgroundColor,
        padding: const EdgeInsets.symmetric(horizontal: 60, vertical: 15),
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(8.0),
            side: const BorderSide(width: 1.5, color: Colors.brown)),
      ),
      onPressed: onPressed,
      child: CustomText(text: text, size: textSize),
    );
  }
}
