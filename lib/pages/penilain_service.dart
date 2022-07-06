

import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class penilaianservice extends ChangeNotifier{
  int? selectindex;

  List<Map<String, dynamic>> listPraktikan = [
    {
      'nama' : 'Farli Nahrul javier',
      'nilai': 0,

    },
    {
      'nama': 'Nur Syafei',
      'nilai': 0,
    },
  ];
  void updateNilai(int index, int nilai){
    List<Map<String, dynamic>> listTemp = [];
    for (var i = 0; i < listPraktikan.length; i++) {
      if (i == index) {
        listTemp.add({
          'nama': listPraktikan[i]['nama'],
          'nilai': nilai,
        });
      continue;
      }  
        listTemp.add(listPraktikan[i]);
  }
  listPraktikan = listTemp;
  notifyListeners();
}
}