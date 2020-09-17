import 'package:aadl2/camera.dart';
import 'package:aadl2/maps.dart';
import 'package:aadl2/youtube.dart';
import 'package:flutter/material.dart';

void main(List<String> args) {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'AADL APP',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        appBarTheme: const AppBarTheme(
          color: Colors.blueAccent,
          textTheme: TextTheme(
            headline6: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.w300,
              fontSize: 20.0,
            ),
          ),
        ),
        iconTheme: const IconThemeData(
          color: Colors.blueAccent,
        ),
      ),
      home: ButtonPage(),
    );
  }
}

class ButtonPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("AADL PROJECT")),
      body: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            // Text(
            //   "Button 1",
            // ),
            // Text(
            //   "Button 2",
            // ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                FlatButton(
                    onPressed: () {
                      print("Camera");
                      Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => CameraApp(),
                      ));
                      // CameraApp();
                    },
                    child: Text('Camera')),
                FlatButton(
                    onPressed: () {
                      print("Maps");
                      // MapsDemo();
                      Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => MapsDemo(),
                      ));
                    },
                    child: Text('Maps')),
                FlatButton(
                    onPressed: () {
                      print("Video");
                      Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => YoutubePlayerDemoApp(),
                      ));
                      // CameraApp();
                    },
                    child: Text('Video')),
              ],
            )
          ],
        ),
      ),
    );
  }
}
