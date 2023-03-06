import 'package:bay_project/domain/state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'model/elon_model.dart';

class MainCubit extends Cubit<MainState> {
  MainCubit() : super(MainState(listOfElon: []));

  getData() {
    List<ElonModel> listOfElon = [
      ElonModel(
          title: "Новостройка! Продается 2/4/9.От Сквера 3км",
          price: "23000",
          place: "110 m^2",
          floor: "4 xona, 2/4 qavat",
          location: "Toshkent, Mirzo Ulug’bek tumani Qorasu 6",
          image:
              "https://foyr.com/learn/wp-content/uploads/2021/08/design-your-dream-home.jpg",
          time: "Dushanba, 19:11",
          like: false),
      ElonModel(
          title: "Golden House uylari endi sotuvda. Tezroq ulgirib qoling!",
          price: "300000",
          place: "140 m^2",
          floor: "3 xona, 3/5 qavat",
          location: "Toshkent, Sebzor",
          image:
              "https://robertelliotthomes.com/wp-content/uploads/2020/11/Luxury-homes-in-Dallas.jpg",
          time: "Seshanba, 20:00",
          like: false),
      ElonModel(
          title: "Dream House",
          price: "230000",
          place: "100 m^2",
          floor: "2 xona, 4/8 qavat",
          location: "Toshkent, Chilonzor tumani",
          image:
              "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQBAt4iPjy1DU3EqvfeOPgA7ISm8ybH3aqvznyyz0JtfDzbr8F4_LHD0uyrusB22TkOchk&usqp=CAU",
          time: "Bugun, 10:00",
          like: false)
    ];
    emit(state.copyWith(elon: listOfElon));
  }

  changeList(bool isList){
    emit(state.copyWith(islist: isList));
  }
}
