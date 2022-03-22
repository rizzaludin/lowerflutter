import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Home"),
        centerTitle: true,
        actions: [
          IconButton(
              onPressed: () {},
              icon: const Icon(Icons.notifications_none_rounded)),
          IconButton(onPressed: () {}, icon: const Icon(Icons.more_vert))
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
            SizedBox(height: 30),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  width: 110,
                  height: 110,
                  color: Colors.green,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const [
                      Icon(Icons.person, size: 60),
                      Text('PROFILE')
                    ],
                  ),
                ),
                const SizedBox(width: 20),
                Container(
                  width: 110,
                  height: 110,
                  color: Colors.green,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const [
                      Icon(Icons.shopping_cart_outlined, size: 60),
                      Text('PROMO')
                    ],
                  ),
                ),
                const SizedBox(width: 20),
                Container(
                  width: 110,
                  height: 110,
                  color: Colors.green,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const [
                      Icon(Icons.newspaper, size: 60),
                      Text('NEWS')
                    ],
                  ),
                )
              ],
            ),
            const SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  width: 110,
                  height: 110,
                  color: Colors.green,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const [
                      Icon(CupertinoIcons.ticket, size: 60),
                      Text('TICKET')
                    ],
                  ),
                ),
                SizedBox(width: 20),
                Container(
                  width: 110,
                  height: 110,
                  color: Colors.green,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const [
                      Icon(Icons.sports_soccer, size: 60),
                      Text('MATCH')
                    ],
                  ),
                ),
                SizedBox(width: 20),
                Container(
                  width: 110,
                  height: 110,
                  color: Colors.green,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const [
                      Icon(Icons.tv_sharp, size: 60),
                      Text('VIDEO')
                    ],
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
