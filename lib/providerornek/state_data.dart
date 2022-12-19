import 'package:flutter/material.dart';

class StateData extends ChangeNotifier{//extends yerine with koydugumuzda baska siniflarida yanina ekleyerek yazabiliyoruz onlarinda metotlarini kullanabiliyoruz extends dedigimizde 1 taneden extend edebiliyoruz
 
  String sehir='Mersin';

  void newCity(String city){
    sehir=city;
    notifyListeners();
  }

}