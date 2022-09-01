import 'package:api_ornek0/app/models/response/model.dart';
import 'package:api_ornek0/app/services/services.dart';
import 'package:flutter/material.dart';

class HomeController extends ChangeNotifier {

  //Observable //Dinliyoruz
  List<HomeResponse>? homeResponseList = [];


   Services services = Services();

  getData() async {

    homeResponseList = await services.getHomeData();
    notifyListeners();
  }
  
}