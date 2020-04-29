import 'package:flutter/material.dart';

void main() => runApp(MyApp());

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
      ),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  List<MyClass> countryNames = <MyClass>[
    MyClass(
      countryName: 'Pakistan',
      cases: '3000',
    ),
    MyClass(
      countryName: 'Italy',
      cases: '2000',
    ),
    MyClass(
      countryName: 'France',
      cases: '8000',
    ),
  ];

  IconData icon = Icons.favorite_border;
  Color iconColor = Colors.blue;

  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: () {
          setState(() {
            countryNames.add(MyClass(
              countryName: 'UK',
              cases: '4000',
            ));
          });
        },
      ),
      appBar: AppBar(
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: Text('DASH F-07'),
      ),
      body: Center(
        // Center is a layout widget. It takes a single child and positions it
        // in the middle of the parent.
//        child: ListView(
//          children: countryNames.map((item) => ListTile(title: Text(item))).toList(),
//        ),
        child: Column(
          children: <Widget>[
            ListView.builder(
                shrinkWrap: true,
                itemCount: countryNames.length,
                itemBuilder: (context, index) {
                  return Card(
                    elevation: 4.0,
                    child: ListTile(
                      title: Text(countryNames[index].countryName),
                      subtitle: Text(countryNames[index].cases),
                    ),
                  );
                }),
            Card(
              elevation: 4.0,
//              color: Colors.orange,
              child: ListTile(
                title: Text('Flutter bootcamp'),
                subtitle: Text('F-07'),
                leading: CircleAvatar(
                  child: Text('F7'),
                ),
                trailing: GestureDetector(
                  onTap: () {
                    setState(() {
                      icon = Icons.favorite;
                      iconColor = Colors.red;
                    });
                  },
                  child: Icon(
                    icon,
                    color: iconColor,
                  ),
                ),
              ),
            ),
            Card(
              elevation: 4.0,
              child: ListTile(
                title: Text('Flutter bootcamp'),
                subtitle: Text('F-07'),
                leading: CircleAvatar(
                  child: Text('F7'),
                ),
                trailing: Icon(Icons.map),
              ),
            ),
            RaisedButton(
              child: Text('Hello World'),
            ),
            RaisedButton(
              child: Text('Hello World'),
            ),
            Row(
              children: <Widget>[
                RaisedButton(
                  child: Text('Google'),
                ),
                Icon(Icons.remove_circle)
              ],
            )
          ],
        ),
      ),

//        ListView.builder(
//            itemCount: countryNames.length,
//            itemBuilder: (context, index) {
//              return ListTile(
//                title: Text(countryNames[index]),
//              );
//            }),
//      ),
    );
  }
}

class MyClass {
  final String countryName;
  final String cases;

  MyClass({this.countryName, this.cases});
}
