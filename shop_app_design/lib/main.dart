import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shop_app/constant/theme/color.dart';
import 'package:shop_app/routes.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
          visualDensity: VisualDensity.adaptivePlatformDensity,
          textTheme: Theme.of(context).textTheme.apply(bodyColor: kTextColor)
          // primarySwatch: Colors.blue,
          ),
      // home: HomeScreen(),
      getPages: routes,
    );
  }
}
