import 'package:flutter/material.dart';
import 'package:parallax/parallax.dart';

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  List<double> rates = [0, 0, 0, 0, 0, 0, 0, 0, 90];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: NotificationListener<ScrollNotification>(
        onNotification: (ScrollNotification notification) {
          if (notification is ScrollUpdateNotification) {
            setState(() {
              for (int i = 0; i < rates.length; i++) {
                rates[i] -= (notification.scrollDelta! / (i + 1));
              }
            });
          }
          return true;
        },
        child: Stack(
          children: <Widget>[
            ListView.builder(
              itemCount: rates.length,
              itemBuilder: (BuildContext context, int index) {
                return ParallaxWidget(
                  key: UniqueKey(), // Clé unique pour chaque instance
                  top: rates[index],
                  asset: "parallax$index",
                );
              },
            ),
            Container(
              color: Color(0xff210002),
              width: double.infinity,
              padding: EdgeInsets.only(top: 70),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Text(
                    "Blabla",
                    style: TextStyle(color: Colors.white, fontSize: 20),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
