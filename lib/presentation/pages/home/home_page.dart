import 'package:bay_project/domain/state.dart';
import 'package:bay_project/presentation/pages/home/widgets/custom_home_banner.dart';
import 'package:bay_project/presentation/style/style.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../domain/cubit.dart';
import '../../components/custom_main_widget_grid.dart';
import '../../components/custom_main_widget_list.dart';
import '../../components/custom_tab_bar.dart';
import '../../components/custom_top.dart';
import '../../components/custom_top_elon.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage>
    with SingleTickerProviderStateMixin {
  TextEditingController searchController = TextEditingController();
  late TabController tabController;

  @override
  void initState() {
    tabController = TabController(length: 2, vsync: this);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => MainCubit()..getData(),
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.only(left: 24, right: 24, top: 52),
          child: Column(
            children: [
              CustomTop(
                searchController: searchController,
              ),
              8.verticalSpace,
              CustomTabBar(
                tabController: tabController,
              ),
              16.verticalSpace,
              const CustomHomeBanner(),
              16.verticalSpace,
              Expanded(
                child: TabBarView(controller: tabController, children: [
                  BlocBuilder<MainCubit, MainState>(
                    builder: (context, state) {
                      return ListView(
                        shrinkWrap: true,
                        physics: const BouncingScrollPhysics(),
                        children: [
                          const CustomTopElon(),
                          12.verticalSpace,
                          SizedBox(
                            height: (state.isList ?? true) ? 188 : 262,
                            child: ListView.builder(
                                shrinkWrap: true,
                                physics: const BouncingScrollPhysics(),
                                scrollDirection: Axis.horizontal,
                                itemCount: state.listOfElon.length,
                                itemBuilder: (context, index) {
                                  return Container(
                                      margin: const EdgeInsets.only(right: 16),
                                      padding: const EdgeInsets.all(1),
                                      decoration: BoxDecoration(
                                          gradient: Style.orange,
                                          borderRadius: BorderRadius.circular(
                                              6)),
                                      child: (state.isList ?? true)
                                          ? CustomMainWidgetList(
                                        title:
                                        state.listOfElon[index].title,
                                        time: state.listOfElon[index].time,
                                        price:
                                        state.listOfElon[index].price,
                                        like: state.listOfElon[index].like,
                                        location: state
                                            .listOfElon[index].location,
                                        floor:
                                        state.listOfElon[index].floor,
                                        place:
                                        state.listOfElon[index].place,
                                        image:
                                        state.listOfElon[index].image,
                                        isTop: true,
                                      )
                                          : CustomMainWidgetGrid(
                                        title:
                                        state.listOfElon[index].title,
                                        time: state.listOfElon[index].time,
                                        price:
                                        state.listOfElon[index].price,
                                        like: state.listOfElon[index].like,
                                        location: state
                                            .listOfElon[index].location,
                                        floor:
                                        state.listOfElon[index].floor,
                                        place:
                                        state.listOfElon[index].place,
                                        image:
                                        state.listOfElon[index].image,
                                      ));
                                }),
                          ),
                          16.verticalSpace,
                          Text(
                            "E'lonlar",
                            style: Style.textStyleNormal(size: 16),
                          ),
                          (state.isList ?? true)
                              ? ListView.builder(
                              shrinkWrap: true,
                              physics: const NeverScrollableScrollPhysics(),
                              scrollDirection: Axis.vertical,
                              itemCount: state.listOfElon.length,
                              itemBuilder: (context, index) {
                                return CustomMainWidgetList(
                                  title: state.listOfElon[index].title,
                                  time: state.listOfElon[index].time,
                                  price: state.listOfElon[index].price,
                                  like: state.listOfElon[index].like,
                                  location: state.listOfElon[index].location,
                                  floor: state.listOfElon[index].floor,
                                  place: state.listOfElon[index].place,
                                  image: state.listOfElon[index].image,
                                  isTop: false,
                                );
                              })
                              : GridView.builder(
                              shrinkWrap: true,
                              physics: const NeverScrollableScrollPhysics(),
                              itemCount: state.listOfElon.length,
                              scrollDirection: Axis.vertical,
                              gridDelegate:
                              const SliverGridDelegateWithFixedCrossAxisCount(
                                  crossAxisCount: 2,
                                  mainAxisExtent: 262,
                                  mainAxisSpacing: 16,
                                  crossAxisSpacing: 16),
                              itemBuilder: (context, index) {
                                return CustomMainWidgetGrid(
                                  title: state.listOfElon[index].title,
                                  time: state.listOfElon[index].time,
                                  price: state.listOfElon[index].price,
                                  like: state.listOfElon[index].like,
                                  location: state.listOfElon[index].location,
                                  floor: state.listOfElon[index].floor,
                                  place: state.listOfElon[index].place,
                                  image: state.listOfElon[index].image,
                                );
                              })
                        ],
                      );
                    },
                  ),
                  BlocBuilder<MainCubit, MainState>(
                    builder: (context, state) {
                      return ListView(
                        physics: const BouncingScrollPhysics(),
                        children: [
                          const CustomTopElon(),
                          12.verticalSpace,
                          SizedBox(
                            height: (state.isList ?? true) ? 188 : 262,
                            child: ListView.builder(
                                scrollDirection: Axis.horizontal,
                                physics: const BouncingScrollPhysics(),
                                shrinkWrap: true,
                                itemCount: state.listOfElon.length,
                                itemBuilder: (context, index) {
                                  return Container(
                                      margin: const EdgeInsets.only(right: 16),
                                      padding: const EdgeInsets.all(1),
                                      decoration: BoxDecoration(
                                          gradient: Style.orange,
                                          borderRadius: BorderRadius.circular(
                                              6)),
                                      child: (state.isList ?? true)
                                          ? CustomMainWidgetList(
                                        title:
                                        state.listOfElon[index].title,
                                        time: state.listOfElon[index].time,
                                        price:
                                        state.listOfElon[index].price,
                                        like: state.listOfElon[index].like,
                                        location: state
                                            .listOfElon[index].location,
                                        floor:
                                        state.listOfElon[index].floor,
                                        place:
                                        state.listOfElon[index].place,
                                        image:
                                        state.listOfElon[index].image,
                                        isTop: true,
                                      )
                                          : CustomMainWidgetGrid(
                                        title:
                                        state.listOfElon[index].title,
                                        time: state.listOfElon[index].time,
                                        price:
                                        state.listOfElon[index].price,
                                        like: state.listOfElon[index].like,
                                        location: state
                                            .listOfElon[index].location,
                                        floor:
                                        state.listOfElon[index].floor,
                                        place:
                                        state.listOfElon[index].place,
                                        image:
                                        state.listOfElon[index].image,
                                      ));
                                }),
                          ),
                          16.verticalSpace,
                          Text(
                            "E'lonlar",
                            style: Style.textStyleNormal(size: 16),
                          ),
                          (state.isList ?? true)
                              ? ListView.builder(
                              shrinkWrap: true,
                              scrollDirection: Axis.vertical,
                              physics: const NeverScrollableScrollPhysics(),
                              itemCount: state.listOfElon.length,
                              itemBuilder: (context, index) {
                                return CustomMainWidgetList(
                                  title: state.listOfElon[index].title,
                                  time: state.listOfElon[index].time,
                                  price: state.listOfElon[index].price,
                                  like: state.listOfElon[index].like,
                                  location: state.listOfElon[index].location,
                                  floor: state.listOfElon[index].floor,
                                  place: state.listOfElon[index].place,
                                  image: state.listOfElon[index].image,
                                  isTop: false,
                                );
                              })
                              : GridView.builder(
                              itemCount: state.listOfElon.length,
                              scrollDirection: Axis.vertical,
                              shrinkWrap: true,
                              physics: const NeverScrollableScrollPhysics(),
                              gridDelegate:
                              const SliverGridDelegateWithFixedCrossAxisCount(
                                  crossAxisCount: 2,
                                  mainAxisExtent: 262,
                                  mainAxisSpacing: 16,
                                  crossAxisSpacing: 16),
                              itemBuilder: (context, index) {
                                return CustomMainWidgetGrid(
                                  title: state.listOfElon[index].title,
                                  time: state.listOfElon[index].time,
                                  price: state.listOfElon[index].price,
                                  like: state.listOfElon[index].like,
                                  location: state.listOfElon[index].location,
                                  floor: state.listOfElon[index].floor,
                                  place: state.listOfElon[index].place,
                                  image: state.listOfElon[index].image,
                                );
                              })
                        ],
                      );
                    },
                  )
                ]),
              )
            ],
          ),
        ),
      ),
    );
  }
}
