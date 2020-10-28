import 'package:flutter/material.dart';
import 'dart:math';
import 'package:assets_audio_player/assets_audio_player.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Score',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
        // This makes the visual density adapt to the platform that you run
        // the app on. For desktop platforms, the controls will be smaller and
        // closer together (more dense) than on mobile platforms.
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(title: 'Score'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final random = new Random();
  bool k = true;
  bool click = true;
  bool t = false;
  bool p = false;
  double l = 100;
  double w = 100;
  int tt = 0;
  int score = 0;
  int a = 0;
  int b = 0;
  bool k1 = true;
  bool click1 = true;
  bool t1 = false;
  bool p1 = false;
  double l1 = 400;
  double w1 = 200;
  int tt11 = 0;
  int score1 = 0;
  int a1 = 0;
  int b1 = 0;

  @override
  Widget build(BuildContext context) {
    a = ((MediaQuery.of(context).size.height.round() - 200) / 100).round();
    b = ((MediaQuery.of(context).size.width.round() - 200) / 100).round();
    print(a);
    print(b);
    return Scaffold(
        body: Center(
            child: Stack(children: <Widget>[
      Container(
        color: Colors.pink[500],
      ),
      Positioned(top: 50, left: 20, child: Text("Score")),
      Positioned(top: 70, left: 20, child: Text(score.toString())),
      AnimatedContainer(
          duration: Duration(milliseconds: 500),
          child: Positioned(
              top: l,
              left: w,
              child: Column(
                children: [
                  click
                      ? GestureDetector(
                          child: AnimatedContainer(
                            duration: Duration(milliseconds: tt),
                            height: t ? 100 : 0,
                            child: Image.asset(
                              'assets/images/lines.png',
                              scale: 0.5,
                            ),
                            onEnd: () {
                              if (t == true) {
                                setState(() {
                                  tt = 0;
                                  int aa = random.nextInt(a);
                                  int bb = random.nextInt(b + 1);
                                  if (aa % 2 == 1) aa--;
                                  l = (100 * (aa + 1)).toDouble();
                                  w = (100 * bb).toDouble();
                                  k = true;
                                  t = false;
                                  print(l);
                                  print(w);
                                });
                              }
                            },
                          ),
                        )
                      : Padding(padding: EdgeInsets.all(0)),
                  k
                      ? GestureDetector(
                          child: Container(
                            child: Container(
                                height: 95,
                                width: 100,
                                decoration: BoxDecoration(
                                    image: DecorationImage(
                                        image: Image.asset(
                                                'assets/images/bubble.png')
                                            .image)),
                                child: Center(
                                  child: Text("Happiness"),
                                )),
                          ),
                          onTap: () {
                            AssetsAudioPlayer.playAndForget(
                                Audio("assets/audios/bubbleburst.mp3"));
                            score = score + 1;
                            setState(() {
                              tt = 250;
                              k = false;
                              t = true;
                              print("vsjvnsjk");
                              tt11 = 0;
                              int aa = random.nextInt(a);
                              int bb = random.nextInt(b + 1);
                              if (aa % 2 == 0) aa++;
                              l1 = (100 * (aa + 1)).toDouble();
                              w1 = (100 * bb).toDouble();
                              k1 = true;
                              t1 = false;
                              print(l);
                              print(w);
                            });
                          },
                        )
                      : Padding(padding: EdgeInsets.all(0)),
                ],
              ))),
      AnimatedContainer(
          duration: Duration(milliseconds: 500),
          child: Positioned(
              top: l1,
              left: w1,
              child: Column(
                children: [
                  click1
                      ? GestureDetector(
                          child: AnimatedContainer(
                            duration: Duration(milliseconds: tt11),
                            height: t1 ? 100 : 0,
                            child: Image.asset(
                              'assets/images/lines.png',
                              scale: 0.5,
                            ),
                            onEnd: () {
                              if (t1 == true) {
                                setState(() {
                                  tt11 = 0;
                                  int aa = random.nextInt(a);
                                  int bb = random.nextInt(b + 1);
                                  if (aa % 2 == 0) aa++;
                                  l1 = (100 * (aa + 1)).toDouble();
                                  w1 = (100 * bb).toDouble();
                                  k1 = true;
                                  t1 = false;
                                  print(l);
                                  print(w);
                                });
                              }
                            },
                          ),
                        )
                      : Padding(padding: EdgeInsets.all(0)),
                  k1
                      ? GestureDetector(
                          child: Container(
                            child: Container(
                                height: 95,
                                width: 100,
                                decoration: BoxDecoration(
                                    image: DecorationImage(
                                        image: Image.asset(
                                                'assets/images/bubble.png')
                                            .image)),
                                child: Center(
                                  child: Text("Sadness"),
                                )),
                          ),
                          onTap: () {
                            AssetsAudioPlayer.playAndForget(
                                Audio("assets/audios/bubbleburst.mp3"));
                            score = score - 1;
                            setState(() {
                              tt11 = 250;
                              k1 = false;
                              t1 = true;
                              print("vsjvnsjk");
                              tt = 0;
                              int aa = random.nextInt(a);
                              int bb = random.nextInt(b + 1);
                              if (aa % 2 == 1) aa--;
                              l = (100 * (aa + 1)).toDouble();
                              w = (100 * bb).toDouble();
                              k = true;
                              t = false;
                              print(l);
                              print(w);
                            });
                          },
                        )
                      : Padding(padding: EdgeInsets.all(0)),
                ],
              )))
    ])));
  }
}
