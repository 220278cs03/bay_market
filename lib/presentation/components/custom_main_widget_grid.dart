import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../style/style.dart';

// ignore: must_be_immutable
class CustomMainWidgetGrid extends StatelessWidget {
  String title;
  String price;
  String place;
  String image;
  String floor;
  String location;
  String time;
  bool? like;
   CustomMainWidgetGrid({Key? key, required this.title,
     required this.time,
     required this.price,
     required this.like,
     required this.location,
     required this.floor,
     required this.place,
     required this.image}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 168,
      height: 262,
      decoration: BoxDecoration(
          color: Style.white,
          border: Border.all(color: Style.strokeSearch),
          borderRadius: BorderRadius.circular(6)),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Stack(
            children: [
              Container(
                height: 140,
                width: 168,
                decoration: BoxDecoration(
                    borderRadius: const BorderRadius.only(topRight: Radius.circular(6), topLeft: Radius.circular(6)),
                    image: DecorationImage(
                        image: NetworkImage(image), fit: BoxFit.cover)),
              ),
              Positioned(
                bottom: 0,
                left: 0,
                child: Container(
                  padding:
                  const EdgeInsets.symmetric(horizontal: 10, vertical: 3),
                  decoration: const BoxDecoration(
                      borderRadius:
                      BorderRadius.only(bottomLeft: Radius.circular(2)),
                      gradient: Style.orange),
                  child: Text(
                    "Top",
                    style:
                    Style.textStyleThin(color: Style.white, size: 12),
                  ),
                ),
              )
            ],
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 12),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SizedBox(
                      width: 100,
                      child: Text(
                        title,
                        style: Style.textStyleThin(color: Style.link, size: 12),
                        overflow: TextOverflow.ellipsis,
                        maxLines: 2,
                      ),
                    ),
                    Icon(Icons.favorite_border, color: Style.primaryBlue.withOpacity(0.4),)
                  ],
                ),
                6.verticalSpace,
                Text(price, style: Style.textStyleNormal(),),
                6.verticalSpace,
                Text(location,style: Style.textStyleThin(size: 12, color: Style.primaryGreyDark),overflow: TextOverflow.ellipsis, maxLines: 1,),
                6.verticalSpace,
                Text(time,style: Style.textStyleThin(size: 12, color: Style.primaryGreyDark),overflow: TextOverflow.ellipsis, maxLines: 1)

              ],
            ),
          ),
        ],
      ),
    );
  }
}
