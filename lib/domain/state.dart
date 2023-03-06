import 'model/elon_model.dart';

class MainState{
  final List<ElonModel> listOfElon;
  bool? isList;

  MainState({required this.listOfElon, this.isList = true});

  MainState copyWith({List<ElonModel>? elon, bool? islist}) => MainState(listOfElon: elon ?? listOfElon, isList: islist ?? isList);
}