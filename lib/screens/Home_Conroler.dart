

import 'package:get/get.dart';

import '../utills/Api_Helper.dart';

class HomeController extends GetxController
{
  List Data = [];
  Future<List> ShowApi()
  async {
    ApiHelper apiHelper = ApiHelper();
    return await apiHelper.apicall();
  }
}
