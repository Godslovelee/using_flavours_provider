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
