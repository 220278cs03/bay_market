import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../components/custom_button.dart';
import '../../../components/custom_choice_bar.dart';
import '../../../style/style.dart';

class CustomHomeBanner extends StatelessWidget {
  const CustomHomeBanner({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
          color: Style.bgBlue, borderRadius: BorderRadius.circular(8)),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Qanday Uy qidiryapsiz?",
            style: Style.textStyleBold(size: 18),
          ),
          16.verticalSpace,
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              CustomChoiceBar(title: 'Turi',),
              CustomChoiceBar(title: "Uzoq muddatli")
            ],
          ),
          12.verticalSpace,
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              CustomChoiceBar(title: "Xonalar"),
              CustomChoiceBar(title: "Narxi")
            ],
          ),
          16.verticalSpace,
          CustomButton(title: "E'lonlarni ko'rsatish")
        ],
      ),
    );
  }
}
