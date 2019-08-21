import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
      home: MyHomePage(),
    ));

class MyHomePage extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blueGrey,
        title: Text('Layout Demo'),
      ),
      body: Container(
        width: 300,
        height: 300,
        decoration: BoxDecoration(
            color: Colors.amber,
            border: Border.all(
                color: Colors.black87, style: BorderStyle.solid, width: 5),
            borderRadius: BorderRadius.all(Radius.circular(50))),
        child: Stack(
          fit: StackFit.expand,
          children: <Widget>[
            Banner(
              message: 'Top Start',
              location: BannerLocation.topStart,
            ),
            Banner(
              message: 'Top End',
              location: BannerLocation.topEnd,
            ),
            Banner(
                message: 'Bottom Start', location: BannerLocation.bottomStart),
            Banner(message: 'Bottom End', location: BannerLocation.bottomEnd),
          ],
        ),
      ),
    );
  }
}
