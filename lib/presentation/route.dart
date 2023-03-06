import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../domain/cubit.dart';
import 'pages/route_check_page.dart';

abstract class Routes{
  Routes._();

  static PageRoute goCheckPage({String? type}){
    return MaterialPageRoute(builder: (_) => BlocProvider(
      create: (context) => MainCubit(),//..method,
      child: RouteCheckPage(),
    ));
  }

  static PageRoute goNoInternetWithoutBloc({String? type}) {
    return MaterialPageRoute(
      builder: (_) => const RouteCheckPage(),
    );
  }
}