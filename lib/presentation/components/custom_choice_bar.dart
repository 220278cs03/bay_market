import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../style/style.dart';

// ignore: must_be_immutable
class CustomChoiceBar extends StatelessWidget {
  String title;
  CustomChoiceBar({Key? key, required this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
        showDialog(context: context, builder: (context){
          return const AlertDialog(
            title: Text("Turi"),
            actions: [

            ],
          );
        });
      },
      child: Container(
        height: 36.h,
        width: 150.w,
        padding: const EdgeInsets.all(8),
        decoration: BoxDecoration(
            color: Style.white,
            borderRadius: BorderRadius.circular(4)),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              title,
              style: Style.textStyleThin(),
            ),
            const Icon(
              Icons.keyboard_arrow_down,
              color: Style.primaryBlue,
            )
          ],
        ),
      ),
    );
  }
}
