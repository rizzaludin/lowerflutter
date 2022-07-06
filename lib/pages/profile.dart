import 'package:flutter/material.dart';
import 'package:persebaya_selamanya/pages/edit_profile.dart';
import 'package:persebaya_selamanya/pages/newsbuilder.dart';
import 'package:persebaya_selamanya/pages/penilaian_list.dart';

import 'newsbuilder.dart';

class Profilepage extends StatefulWidget {
  const Profilepage({Key? key}) : super(key: key);

  @override
  State<Profilepage> createState() => _ProfilepageState();
}

class _ProfilepageState extends State<Profilepage> {
  TextEditingController emailController = TextEditingController();
  TextEditingController nikController = TextEditingController();
  TextEditingController nohpController = TextEditingController();
  TextEditingController tglController = TextEditingController();
  TextEditingController genderController = TextEditingController();
  TextEditingController alamatController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text('Profile'), centerTitle: true),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                width: double.infinity,
                height: 250,
                color: Colors.green,
                child: Column(children: [
                  const CircleAvatar(
                    backgroundImage: AssetImage('assets/avatar.png'),
                    radius: 70,
                  ),
                  const Text(
                    'Lutfi Rizzaludin',
                    style: TextStyle(
                      fontSize: 24,
                      color: Colors.white,
                    ),
                  ),
                  RaisedButton(onPressed: () {}, child: Text('Edit Profile'))
                ]),
              ),
              Container(
                padding: EdgeInsets.all(20),
                child: Column(
                  children: [
                    TextField(
                      controller: emailController,
                      decoration: InputDecoration(
                          prefixIcon: Icon(Icons.email),
                          hintText: 'Email Anda'),
                    ),
                    TextField(
                      controller: nikController,
                      decoration: InputDecoration(
                          prefixIcon: Icon(Icons.card_membership),
                          hintText: 'Nomer NIK Anda'),
                    ),
                    TextField(
                      controller: nohpController,
                      decoration: InputDecoration(
                          prefixIcon: Icon(Icons.phone),
                          hintText: 'Nomer Telfon'),
                    ),
                    TextField(
                      controller: tglController,
                      decoration: InputDecoration(
                          prefixIcon: Icon(Icons.calendar_month),
                          hintText: 'tanggal lahir'),
                    ),
                    TextField(
                      controller: genderController,
                      decoration: InputDecoration(
                          prefixIcon: Icon(Icons.gesture_rounded),
                          hintText: 'Jenis Kelamin'),
                    ),
                    TextField(
                      controller: alamatController,
                      decoration: InputDecoration(
                          prefixIcon: Icon(Icons.map), hintText: 'Alamat'),
                    ),
                    RaisedButton(
                        child: Text('Kirim'),
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => penilaianpage()),
                          );
                        })
                  ],
                ),
              )
            ],
          ),
        ));
  }
}
