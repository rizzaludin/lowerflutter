import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:persebaya_selamanya/pages/newsberita1.dart';

class newsberitapage extends StatelessWidget {
  final List _test = [
    'mencoba1',
    'mencoba2',
    'mencoba3',
    'mencoba4',
    'mencoba5'
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Berita'),
        centerTitle: true,
      ),
      body: ListView.builder(
          itemCount: _test.length,
          itemBuilder: ((context, index) {
            return ngaturpadding();
          })),
    );
  }
}
