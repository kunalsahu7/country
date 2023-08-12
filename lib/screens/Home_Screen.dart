

import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'Home_Conroler.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  HomeController homeController = Get.put(HomeController());

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: FutureBuilder(
          future: homeController.ShowApi(),
          builder: (context, snapshot) {
            if (snapshot.hasError) {
              Text("${snapshot.error}");
            } else if (snapshot.hasData) {

              homeController.Data = snapshot.data!;
              return ListView.builder(
                itemCount: homeController.Data.length,

                itemBuilder: (context, index) {
                  return InkWell(
                    onTap: () {
                      Get.toNamed('/ditail',arguments: index);
                    },
                    child: Container(
                      height: 100,
                      width: double.infinity,
                      child: ListTile(
                        title:  Text("${homeController.Data[index].n1.official}"),
                        leading: Container(
                          decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),),
                          child:
                          Image.network(
                            "${homeController.Data[index].f1!.png}"
                            ,width: 100,height: 100,

                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                    ),
                  );
                },
              );
            }
            return CircularProgressIndicator();
          },
        ),
      ),
    );
  }
}
