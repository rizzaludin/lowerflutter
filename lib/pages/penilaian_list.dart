import 'package:persebaya_selamanya/pages/penilaian_edit.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:persebaya_selamanya/pages/penilain_service.dart';

class penilaianpage extends StatelessWidget {
  const penilaianpage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            const Text('Nama Praktikan'),
          Expanded(
            child: Consumer<penilaianservice>(
              builder: (context, penilaian, _) => ListView.builder(
                itemCount : penilaian.listPraktikan.length,
                itemBuilder:(context, index){
                  return GestureDetector(
                    onTap:  () {
                      penilaian.selectindex = index;
                      Navigator.push(
                        context, 
                        MaterialPageRoute(
                          builder: (context) => PenilaianEditPage(),
                        )
                      );
                    },
                    child: Container(
                      color: Colors.grey,
                      padding:  const EdgeInsets.symmetric(vertical: 10),
                      margin:  EdgeInsets.symmetric(vertical: 10),
                      child: Row(
                        children: [
                          Expanded(
                            child:
                            Text(penilaian.listPraktikan[index]['nama']),
                            ),
                            Text(penilaian.listPraktikan[index]['nilai'].toString()),
                        ],
                      ),

                    )
                  );
                } ,
              )
            )
          )
          ]
        )
      )
    );
  }
}