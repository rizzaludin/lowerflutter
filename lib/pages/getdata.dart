import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:persebaya_selamanya/pages/BoredActivity.dart';
import 'package:persebaya_selamanya/pages/datasource.dart';

import 'datasource.dart';

class getActivity extends StatefulWidget {
  const getActivity({Key? key}) : super(key: key);

  @override
  State<getActivity> createState() => _getActivityState();
}

class _getActivityState extends State<getActivity> {

Activity? data;
    _getData () async {
      data = await Services ().getActivity();
    }
  @override
  void initState() {
    
    _getData();
  }

  Widget build (BuildContext context) {
    return Scaffold();
    
  }
}