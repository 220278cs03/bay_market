import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../auto_route.gr.dart';
import '../route.dart';
import '../style/style.dart';

// ignore: must_be_immutable
class CustomTop extends StatelessWidget {
  TextEditingController searchController;
  CustomTop({Key? key, required this.searchController}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        GestureDetector(
          onTap: (){
            //Navigator.push(context, Routes.goCheckPage());
            context.pushRoute(NoInternetRoute());
          },
          child: const Icon(
            Icons.menu,
            color: Style.primaryBlue,
          ),
        ),
        16.horizontalSpace,
        Expanded(
          child: TextFormField(
            controller: searchController,
            decoration: InputDecoration(
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12),
                    borderSide:
                    const BorderSide(color: Style.strokeSearch)),
                focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12),
                    borderSide:
                    const BorderSide(color: Style.strokeSearch)),
                enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12),
                    borderSide:
                    const BorderSide(color: Style.strokeSearch)),
                contentPadding: const EdgeInsets.symmetric(
                    horizontal: 10, vertical: 12),
                prefixIcon:
                const Icon(Icons.search, color: Style.strokeSearch),
                hintText: "Qidirish",
                hintStyle:
                Style.textStyleThin(color: Style.primaryGreyDark)),
          ),
        ),
        16.horizontalSpace,
        const Icon(
          Icons.filter_list,
          color: Style.primaryBlue,
        )
      ],
    );
  }
}
