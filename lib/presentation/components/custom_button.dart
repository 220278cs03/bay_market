import 'package:flutter/material.dart';

import '../style/style.dart';

// ignore: must_be_immutable
class CustomButton extends StatelessWidget {
  String title;
   CustomButton({Key? key, required this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 32,
      decoration: BoxDecoration(
          color: Style.primaryBlue,
          borderRadius: BorderRadius.circular(4)),
      child: Center(
          child: Text(
            title,
            style: Style.textStyleThin(color: Style.white),
          )),
    );
  }
}
