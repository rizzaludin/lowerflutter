import 'package:flutter/material.dart';
import 'package:persebaya_selamanya/pages/newsberita1.dart';

class newspage extends StatelessWidget {
  const newspage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('News'),
        centerTitle: true,
      ),
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/background.jpg"),
            fit: BoxFit.fill,
          ),
        ),
        child: ListView(
          children: <Widget>[
            Container(
              width: double.infinity,
              height: 250,
              margin: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
              child: ClipRRect(
                  borderRadius: BorderRadius.circular(5),
                  child: Image.asset(
                    'assets/gambarberita1.jpg',
                    fit: BoxFit.fill,
                  )),
            ),
            Container(
              width: double.infinity,
              height: 250,
              margin: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
              child: ClipRRect(
                  borderRadius: BorderRadius.circular(5),
                  child: Image.asset(
                    'assets/gambarberita1.jpg',
                    fit: BoxFit.fill,
                  )),
            ),
            Container(
              width: double.infinity,
              height: 250,
              margin: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
              child: ClipRRect(
                  borderRadius: BorderRadius.circular(5),
                  child: Image.asset(
                    'assets/gambarberita1.jpg',
                    fit: BoxFit.fill,
                  )),
            ),
          ],
        ),
      ),
    );
  }
}
