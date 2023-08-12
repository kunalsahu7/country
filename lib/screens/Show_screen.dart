import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'Home_Conroler.dart';

class DitailScreen extends StatefulWidget {
  const DitailScreen({Key? key}) : super(key: key);

  @override
  State<DitailScreen> createState() => _DitailScreenState();
}

class _DitailScreenState extends State<DitailScreen> {
  HomeController homeController = Get.put(HomeController());
  @override
  Widget build(BuildContext context) {
    dynamic index = Get.arguments;

    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text(
            "${homeController.Data[index].n1!.official}",
            style: TextStyle(
              color: Colors.black,
              fontSize: 25,
            ),
          ),
          backgroundColor: Colors.white,
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                height: 250,
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Colors.black45,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Image.network(
                  "${homeController.Data[index].f1!.png}",
                  height: 100,
                  width: 100,
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20, top: 15),
              child: Text(
                "${homeController.Data[index].n1!.official}",
                style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20, top: 5),
              child: Text(
                "${homeController.Data[index].n1!.common} City",
                style: TextStyle(
                  fontSize: 25,
                ),
              ),
            ),
            SizedBox(height: 20),
            Padding(
              padding: EdgeInsets.only(left: 20, top: 5),
              child: Row(
                children: [
                  Text(
                    "Country Status      :-    ",
                    style: TextStyle(fontSize: 25, color: Colors.black54),
                  ),
                  Expanded(
                    child: Text(
                      "${homeController.Data[index].status}",
                      style: TextStyle(fontSize: 25, color: Colors.black),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 10),
            Padding(
              padding: EdgeInsets.only(left: 20, top: 5),
              child: Row(
                children: [
                  Text(
                    "Continenes            :-    ",
                    style: TextStyle(fontSize: 25, color: Colors.black54),
                  ),
                  Text(
                    "${homeController.Data[index].region}",
                    style: TextStyle(fontSize: 25, color: Colors.black),
                  ),
                ],
              ),
            ),
            SizedBox(height: 10),
            Padding(
              padding: EdgeInsets.only(left: 20, top: 5),
              child: Row(
                children: [
                  Text(
                    "Independent          :-    ",
                    style: TextStyle(fontSize: 25, color: Colors.black54),
                  ),
                  Text(
                    "${homeController.Data[index].independent}",
                    style: TextStyle(fontSize: 25, color: Colors.black),
                  ),
                ],
              ),
            ),
            SizedBox(height: 10),
            Padding(
              padding: EdgeInsets.only(left: 20, top: 5),
              child: Row(
                children: [
                  Text(
                    "Population             :-    ",
                    style: TextStyle(fontSize: 25, color: Colors.black54),
                  ),
                  Text(
                    "${homeController.Data[index].population}",
                    style: TextStyle(fontSize: 25, color: Colors.black),
                  ),
                ],
              ),
            ),
            SizedBox(height: 10),
            Padding(
              padding: EdgeInsets.only(left: 20, top: 5),
              child: Row(
                children: [
                  Text(
                    "Timezones             :-    ",
                    style: TextStyle(fontSize: 25, color: Colors.black54),
                  ),
                  Text(
                    "${homeController.Data[index].timezones[0]}",
                    style: TextStyle(fontSize: 25, color: Colors.black),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
