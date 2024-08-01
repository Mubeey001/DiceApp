import 'dart:math';
import 'package:dice/util/constant/color.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:get/get.dart';

class DiceController extends GetxController {
  var currentDiceNumber = 1.obs;
  var rollCount = 0.obs;
  var totalSum = 0.obs;

  void rollDice() {
    currentDiceNumber.value = Random().nextInt(6) + 1;
    rollCount.value++;
    totalSum.value += currentDiceNumber.value;

    String message;
    if (currentDiceNumber.value % 2 == 0) {
      message = "Even number thrown: ${currentDiceNumber.value}";
    } else {
      message = "Odd number thrown: ${currentDiceNumber.value}";
    }
    _showToast(message);

    if (currentDiceNumber.value == 6) {
      _showToast("A 6 has been thrown!");
    }
    if (rollCount.value == 6) {
      _showToast("Total of ${rollCount.value} rolls: ${totalSum.value}");
      rollCount.value = 0;
      totalSum.value = 0;
    }
  }

  void _showToast(String message) {
    Fluttertoast.showToast(
      msg: message,
      timeInSecForIosWeb: 1,
      backgroundColor: AppColors.backgroundColor,
      textColor: Colors.white,
      fontSize: 20.0,
    );
  }

  String get diceImage {
    switch (currentDiceNumber.value) {
      case 1:
        return 'one';
      case 2:
        return 'two';
      case 3:
        return 'three';
      case 4:
        return 'four';
      case 5:
        return 'five';
      case 6:
        return 'six';
      default:
        return 'one';
    }
  }
}
