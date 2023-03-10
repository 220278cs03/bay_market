import 'package:auto_route/auto_route.dart';
import 'package:bay_project/presentation/pages/home/home_page.dart';
import 'package:bay_project/presentation/pages/no_internet.dart';

@MaterialAutoRouter(
  replaceInRouteName: 'Page,Route',
  routes: <AutoRoute>[
    MaterialRoute(
      path: '/',
      page: HomePage,
    ),
    MaterialRoute(
      path: '/no-internet',
      page: NoInternetPage,
    ),
  ],
)
class $AppRouter {}