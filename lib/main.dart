
import 'package:country/screens/Home_Screen.dart';
import 'package:country/screens/Show_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main()
{
  runApp(
    GetMaterialApp(
      debugShowCheckedModeBanner: false,
      getPages: [
        GetPage(name: '/', page: () => HomeScreen(),),
        GetPage(name: '/ditail', page: () => DitailScreen(),),
      ],
    ),
  );
}
