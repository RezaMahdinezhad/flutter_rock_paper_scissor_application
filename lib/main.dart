import 'package:flutter/material.dart';

void main() {
  runApp(Application());
}

class Application extends StatelessWidget {
  const Application({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(fontFamily: 'vb'),
      home: Scaffold(
        backgroundColor: Colors.deepOrange,
        appBar: AppBar(
          backgroundColor: Colors.red,
          elevation: 0.0,
          centerTitle: true,
          title: Text('سنگ   کاغذ   قیچی'),
        ),
        body: SafeArea(
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Image(
                  image: AssetImage('images/2.png'),
                ),
                TextButton(
                  onPressed: () {},
                  child: Text(
                    'شروع بازی',
                    style: TextStyle(color: Colors.white),
                  ),
                ),
                Image(
                  image: AssetImage('images/3.png'),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
