import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  runApp(GameApplication());
}

class GameApplication extends StatefulWidget {
  GameApplication({Key? key}) : super(key: key);

  @override
  State<GameApplication> createState() => _GameApplicationState();
}

class _GameApplicationState extends State<GameApplication> {
  var top = 1;
  var bottom = 2;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(fontFamily: 'vb'),
      home: Scaffold(
        backgroundColor: Colors.blue,
        appBar: AppBar(
          backgroundColor: Colors.blue,
          elevation: 4.0,
          centerTitle: true,
          title: Text('سنگ   کاغذ   قیچی'),
        ),
        body: SafeArea(
            child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Image(
              image: AssetImage('images/$top.png'),
              height: 100,
            ),
            TextButton(
              onPressed: () {
                setState(() {
                  top = Random().nextInt(3) + 1;
                  bottom = Random().nextInt(3) + 1;
                });
              },
              child: Text(
                'شروع بازی',
                style: TextStyle(color: Colors.white),
              ),
            ),
            Image(
              image: AssetImage('images/$bottom.png'),
              height: 100,
            ),
          ],
        )),
      ),
    );
  }
}
