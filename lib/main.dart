import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:timeline_list/timeline.dart';
import 'package:timeline_list/timeline_model.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
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
      home: MyHomePage(title: '박종순의 인생'),
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
  Timeline getTimeLine() {
    List<TimelineModel> items = [
      TimelineModel(
          Padding(
            padding: const EdgeInsets.fromLTRB(8.0, 32.0, 8.0, 32.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('1990년 12월'),
                        Text('박종순 탄생'),
                      ],
                    ),
                  ],
                )

              ],
            ),
          ),
          position: TimelineItemPosition.right,
          iconBackground: Colors.redAccent,
          icon: Icon(Icons.blur_circular)),
      TimelineModel(
          Padding(
            padding: const EdgeInsets.fromLTRB(8.0, 32.0, 8.0, 32.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Row(
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Text('1997 3월'),
                        Text('초등학교 입학'),
                      ],
                    ),
                  ],
                )

              ],
            ),
          ),
          position: TimelineItemPosition.left,
          iconBackground: Colors.redAccent,
          icon: Icon(Icons.blur_circular)),
      TimelineModel(
          Padding(
            padding: const EdgeInsets.fromLTRB(8.0, 32.0, 8.0, 32.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('2003년 3월'),
                        Text('중학교 입학'),
                      ],
                    ),
                  ],
                )

              ],
            ),
          ),
          position: TimelineItemPosition.right,
          iconBackground: Colors.redAccent,
          icon: Icon(Icons.blur_circular)),
      TimelineModel(
          Padding(
            padding: const EdgeInsets.fromLTRB(8.0, 32.0, 8.0, 32.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('2006년 3월'),
                        Text('고등학교 입학'),
                      ],
                    ),
                  ],
                )

              ],
            ),
          ),
          position: TimelineItemPosition.left,
          iconBackground: Colors.redAccent,
          icon: Icon(Icons.blur_circular)),
      TimelineModel(
          Padding(
            padding: const EdgeInsets.fromLTRB(8.0, 32.0, 8.0, 32.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('2009년 3월'),
                        Text('폴리텍 입학'),
                      ],
                    ),
                  ],
                )

              ],
            ),
          ),
          position: TimelineItemPosition.right,
          iconBackground: Colors.redAccent,
          icon: Icon(Icons.blur_circular)),
      TimelineModel(
          Padding(
            padding: const EdgeInsets.fromLTRB(8.0, 32.0, 8.0, 32.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('2009년 4월'),
                        Text('영원한 백두인의 시작'),
                      ],
                    ),
                  ],
                )
              ],
            ),
          ),
          position: TimelineItemPosition.left,
          iconBackground: Colors.redAccent,
          icon: Icon(Icons.blur_circular)),
      TimelineModel(
          Padding(
            padding: const EdgeInsets.fromLTRB(8.0, 32.0, 8.0, 32.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('2011년 2월'),
                        Text('전역'),
                      ],
                    ),
                  ],
                )

              ],
            ),
          ),
          position: TimelineItemPosition.right,
          iconBackground: Colors.redAccent,
          icon: Icon(Icons.blur_circular)),
      TimelineModel(
          Padding(
            padding: const EdgeInsets.fromLTRB(8.0, 32.0, 8.0, 32.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('2013년 2월'),
                        Text('폴리텍 졸업'),
                      ],
                    ),
                  ],
                )

              ],
            ),
          ),
          position: TimelineItemPosition.right,
          iconBackground: Colors.redAccent,
          icon: Icon(Icons.blur_circular)),
    ];
    return Timeline(children: items, position: TimelinePosition.Center);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(widget.title),
        ),
        body: getTimeLine());
  }
}
