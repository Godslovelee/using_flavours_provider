


A new Flutter application.

## Getting Started
# UI

using provider in the default counter app, and adding multiple flavours
```dart
import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter/material.dart';
import 'package:maxmil_tut/counter.dart';
import 'package:maxmil_tut/flavour.dart';
import 'package:provider/provider.dart';

void main() => runApp(new SecondMyApp());

class SecondMyApp extends StatelessWidget {
  // This widget is the root of your application.

  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
        title: 'Flutter Demo',
        theme: new ThemeData(

          primarySwatch: Colors.blue,
        ),
        home: ChangeNotifierProvider<Counter>(
          create: (context) => Counter(),
          child: MyHomePage(title: 'Flutter Hello World'),
        ));
  }
}

class MyHomePage extends StatelessWidget {
  MyHomePage({Key key, this.title}) : super(key: key);


 

  final String title;



  @override
  Widget build(BuildContext context) {

    final counter = Provider.of<Counter>(context);

    return new Scaffold(
      appBar: new AppBar(
        title: new Text(flavour.prod.toString()),
      ),

      body: new Center(
        child: new Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            new Text(
              'You have pushed the button this many times:',
            ),
             Text(
              '${counter}',
              style: Theme.of(context).textTheme.headline1,
            ),
          ],
        ),
      ),

      floatingActionButton: new FloatingActionButton(
        onPressed: counter.increment,
        tooltip: 'Increment',
        child: new Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}

```





This project is a starting point for a Flutter application.

A few resources to get you started if this is your first Flutter project:

- [Lab: Write your first Flutter app](https://flutter.dev/docs/get-started/codelab)
- [Cookbook: Useful Flutter samples](https://flutter.dev/docs/cookbook)

For help getting started with Flutter, view our
[online documentation](https://flutter.dev/docs), which offers tutorials,
samples, guidance on mobile development, and a full API reference.
