
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ngaturpadding extends StatelessWidget {
  const ngaturpadding({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 8.0),
      child: Container(
        height: 200,
        color: Colors.green,
        child: ClipRRect(
          borderRadius: BorderRadius.circular(10),
          child: Image.asset(
            'assets/gambarkiperpersebaya.jpg',
            fit: BoxFit.cover,
          ),
        ),
      ),
    );
  }
}
=======
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ngaturpadding extends StatelessWidget {
  const ngaturpadding({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 8.0),
      child: Container(
        height: 200,
        color: Colors.green,
        child: ClipRRect(
          borderRadius: BorderRadius.circular(10),
          child: Image.asset(
            'assets/gambarkiperpersebaya.jpg',
            fit: BoxFit.cover,
          ),
        ),
      ),
    );
  }
}

