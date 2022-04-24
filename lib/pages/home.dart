import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:persebaya_selamanya/pages/login.dart';
import 'package:persebaya_selamanya/pages/news.dart';
import 'package:persebaya_selamanya/pages/notofication.dart';
import 'package:persebaya_selamanya/pages/profile.dart';
import 'package:persebaya_selamanya/pages/promo.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:persebaya_selamanya/pages/newsberitapage.dart';

class HomePage extends StatefulWidget {
  final String nama;
  const HomePage({Key? key, required this.nama}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

String _profile = "PROFILE";
String _promo = "PROMO";
String _news = "NEWS";

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Home"),
        centerTitle: true,
        actions: [
          IconButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const Notificationpage()),
                );
              },
              icon: const Icon(Icons.notifications_none_rounded)),
          IconButton(
              onPressed: () async {
                Navigator.of(context).pushAndRemoveUntil(
                    MaterialPageRoute(builder: (context) => loginpage()),
                    (Route<dynamic> route) => false);
                SharedPreferences preferences =
                    await SharedPreferences.getInstance();
                await preferences.remove('nama');
              },
              icon: const Icon(Icons.more_vert))
        ],
      ),
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/background.jpg"),
            fit: BoxFit.fill,
          ),
        ),
        child: Column(
          children: [
            Container(
              width: double.infinity,
              height: 250,
              margin: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
              child: ClipRRect(
                  borderRadius: BorderRadius.circular(15),
                  child: Image.asset(
                    'assets/kartu.jpg',
                    fit: BoxFit.fill,
                  )),
            ),
            const SizedBox(height: 30),
            Text(widget.nama,
                style: TextStyle(fontSize: 20, color: Colors.black)),
            const SizedBox(height: 30),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const Profilepage()),
                    );
                  },
                  child: Container(
                    width: 110,
                    height: 110,
                    margin: EdgeInsets.symmetric(horizontal: 20),
                    color: Colors.green,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [Icon(Icons.person, size: 60), Text(_profile)],
                    ),
                  ),
                ),
                const SizedBox(width: 5),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => newsberitapage()),
                        );
                      },
                      child: Container(
                        width: 110,
                        height: 110,
                        color: Colors.green,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(Icons.shop_rounded, size: 60),
                            Text(_promo)
                          ],
                        ),
                      ),
                    ),
                    const SizedBox(width: 20),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        GestureDetector(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const newspage()),
                            );
                          },
                          child: Container(
                            width: 110,
                            height: 110,
                            color: Colors.green,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Icon(Icons.newspaper_rounded, size: 60),
                                Text(_news),
                              ],
                            ),
                          ),
                        )
                      ],
                    )
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
