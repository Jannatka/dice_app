import 'dart:math' as math;

import 'package:dice_app/app_text/app_texts.dart';
import 'package:dice_app/constants/app_colors.dart';
import 'package:dice_app/constants/app_text_styles.dart';
import 'package:flutter/material.dart';

class HomeUi extends StatefulWidget {
  // ignore: use_key_in_widget_constructors
  const HomeUi();

  @override
  State<HomeUi> createState() => _HomeUiState();
}

class _HomeUiState extends State<HomeUi> {
  int sol = 1;
  int on = 3;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.teal,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: AppColors.teal,
        title: Center(
          child: Text(
            AppTexts.diceApp,
            style: AppTextStyles.black30,
          ),
        ),
      ),
      body: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Expanded(
              child: InkWell(
                onTap: () {
                  on = math.Random().nextInt(6) + 1;
                  sol = math.Random().nextInt(6) + 1;
                  setState(() {});
                },
                child: Image(
                  image: AssetImage(
                    'assets/images/dice$sol.jpg',
                  ),
                ),
              ),
            ),
            Expanded(
              child: InkWell(
                onTap: () {
                  sol = math.Random().nextInt(6) + 1;
                  on = math.Random().nextInt(6) + 1;
                  setState(() {});
                },
                child: Image(
                  image: AssetImage('assets/images/dice$on.jpg'),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
