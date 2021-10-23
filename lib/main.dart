import 'package:flutter/material.dart';
import 'second_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key}) : super(key: key);
  final String imgPath = 'assets/images/4v.jpg';
  final String text1 = 'Apache 4V (4m edition)';
  final String text2 = '\$ 1200';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('This is the first Page'),
      ),
      body: Center(
        child: Column(
          children: [
            InkWell(
              child: Image.asset(
                imgPath,
              ),
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => SecondPage(
                              img: imgPath,
                              t1: text1,
                              t2: text2,
                            )));
              },
            ),
            Text(text1),
            Text(text2),
          ],
        ),
      ),
    );
  }
}
