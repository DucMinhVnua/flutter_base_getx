import 'package:base_getx/screens/home_page.dart';
import 'package:base_getx/screens/second_page.dart';
import 'package:base_getx/services/getx/routes_getx.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      initialRoute: '/',
      getPages: [
        RoutesGetx().GetPageCustom(routeName: '/', page: () => HomePage()),
        RoutesGetx().GetPageCustom(
            routeName: '/second',
            page: () => SecondPage(),
            transition: Transition.rightToLeft)
      ],
    );
  }
}
