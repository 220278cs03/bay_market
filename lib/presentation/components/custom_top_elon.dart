import 'package:bay_project/domain/cubit.dart';
import 'package:bay_project/domain/state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../style/style.dart';

class CustomTopElon extends StatelessWidget {
  const CustomTopElon({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<MainCubit, MainState>(
      builder: (context, state) {
        return Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              "Top E'lonlar",
              style: Style.textStyleNormal(size: 16),
            ),
            Row(
              children: [
                GestureDetector(
                  child:  Icon(
                    Icons.grid_on,
                    color: (state.isList ?? true) ? Style.primaryGreyDark : Style.primaryBlue,
                  ),
                  onTap: () {
                    context.read<MainCubit>().changeList(false);
                  },
                ),
                20.horizontalSpace,
                GestureDetector(
                  child:  Icon(
                    Icons.list,
                    color: (state.isList ?? true) ? Style.primaryBlue : Style.primaryGreyDark,
                  ),
                  onTap: () {
                    context.read<MainCubit>().changeList(true);
                  },
                )
              ],
            )
          ],
        );
      },
    );
  }
}
