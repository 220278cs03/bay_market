import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../style/style.dart';

// ignore: must_be_immutable
class CustomMainWidgetList extends StatelessWidget {
  String title;
  String price;
  String place;
  String image;
  String floor;
  String location;
  String time;
  bool? like;
  bool isTop;

  CustomMainWidgetList(
      {Key? key,
      required this.title,
      required this.time,
      required this.price,
      required this.like,
      required this.location,
      required this.floor,
      required this.place,
      required this.image,
      required this.isTop})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: !isTop ? const EdgeInsets.only(bottom: 16) : const EdgeInsets.all(0),
      padding: const EdgeInsets.only(top: 12, right: 12, left: 12),
      decoration: BoxDecoration(
          color: Style.white,
          border: Border.all(color: Style.strokeSearch),
          borderRadius: BorderRadius.circular(6)),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            width: 300,
            child: Text(
              title,
              style: Style.textStyleThin(color: Style.link),
              overflow: TextOverflow.ellipsis,
              maxLines: 1,
            ),
          ),
          12.verticalSpace,
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Stack(
                children: [
                  Container(
                    height: 91,
                    width: 131,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(2),
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
              12.horizontalSpace,
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Icon(
                        Icons.money,
                        color: Style.primaryBlue.withOpacity(0.4),
                      ),
                      9.horizontalSpace,
                      Text(price, style: Style.textStyleBold(size: 16)),
                    ],
                  ),
                  6.verticalSpace,
                  Row(
                    children: [
                      Icon(
                        Icons.square_foot,
                        color: Style.primaryBlue.withOpacity(0.4),
                      ),
                      9.horizontalSpace,
                      Text(place, style: Style.textStyleBold(size: 16)),
                    ],
                  ),
                  6.verticalSpace,
                  Row(
                    children: [
                      Icon(
                        Icons.architecture,
                        color: Style.primaryBlue.withOpacity(0.4),
                      ),
                      9.horizontalSpace,
                      Text(
                        floor,
                        style: Style.textStyleBold(size: 16),
                        overflow: TextOverflow.ellipsis,
                        maxLines: 1,
                      ),
                    ],
                  ),
                  6.verticalSpace,
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Icon(
                        Icons.location_on,
                        color: Style.primaryBlue.withOpacity(0.4),
                      ),
                      9.horizontalSpace,
                      SizedBox(
                          width: 140,
                          child: Text(
                            location,
                            style: Style.textStyleBold(size: 16),
                            overflow: TextOverflow.ellipsis,
                            maxLines: 1,
                          )),
                    ],
                  ),
                ],
              )
            ],
          ),
          Row(
            children: [
              Text(
                time,
                style:
                    Style.textStyleThin(size: 12, color: Style.primaryGreyDark),
              ),
              200.horizontalSpace,
              Icon(
                Icons.favorite_border,
                color: Style.primaryBlue.withOpacity(0.4),
              )
            ],
          )
        ],
      ),
    );
  }
}
