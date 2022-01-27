import 'package:get/get.dart';
import 'package:shop_app/home_screen.dart';
import 'package:shop_app/screens/details/details_screen.dart';

import 'screens/details/details_screen.dart';

/// Created by Emirşah Erden
/// on 24 Ocak 2022
List<GetPage<dynamic>> routes = [
  GetPage(name: "/", page: () => HomeScreen()),
  GetPage(name: DetailsScreenPage.routeName, page: () => DetailsScreenPage()),
];
