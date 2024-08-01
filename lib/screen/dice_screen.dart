import 'package:dice/controller/dice_controller.dart';
import 'package:dice/util/constant/color.dart';
import 'package:dice/widgets/button_widget.dart';
import 'package:dice/widgets/text_widget/text.dart';
import 'package:dice/widgets/text_widget/text_widget2.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class DiceScreen extends StatelessWidget {
  DiceScreen({super.key});
  final DiceController diceController = Get.put(DiceController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.amber[100],
      appBar: AppBar(
        title: const CustomText(
          text: "Dice Roller",
          size: 25.0,
        ),
        backgroundColor: AppColors.backgroundColor,
        elevation: 10.0,
      ),
      body: Stack(
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 8.0),
            child: Column(
              children: [
                Obx(() => CustomText2(
                    text: "Total Roll: ${diceController.rollCount.value}")),
                Obx(() => CustomText2(
                    text: " Total Sum: ${diceController.totalSum.value}")),
              ],
            ),
          ),
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Obx(() => Image.asset(
                      'assets/images/${diceController.diceImage}.png',
                      width: 150,
                      height: 150,
                    )),
                const SizedBox(height: 50.0),
                ButtonWidget(
                  onPressed: () => diceController.rollDice(),
                  text: "Roll Dice",
                  textSize: 20.0,
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
