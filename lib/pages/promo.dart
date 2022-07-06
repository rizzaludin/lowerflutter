
import 'package:flutter/material.dart';
import 'package:persebaya_selamanya/pages/newsbuilder.dart';

class promopage extends StatelessWidget {
  const promopage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // ignore: dead_code
    return Scaffold(
        appBar: AppBar(
      title: Text('Promo'),
      centerTitle: true,
      actions: [
        IconButton(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context) => newsberitapage(promopage)),
            );
          },
          icon: newsberitapage(print),
        ),
      ],
    ));
  }
}

import 'package:flutter/material.dart';

class promopage extends StatelessWidget {
  const promopage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Promo'), centerTitle: true),
    );
  }
}

