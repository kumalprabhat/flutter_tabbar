import 'package:flutter/material.dart';
import 'package:flutter_tabbar/chats.dart';
import 'package:flutter_tabbar/calls.dart';
import 'package:flutter_tabbar/group.dart';
import 'package:flutter_tabbar/status.dart';

void main(){
  runApp(MaterialApp(
    home: MyApp(),
  ));
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  var list1 = List<String>.generate(11, (index) => "List ${index}");
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: DefaultTabController(
          length: 4,
          child: Scaffold(
            appBar: AppBar(
              backgroundColor: Colors.blueGrey[700],
              title: Text('TabBar Example'),
              bottom: TabBar(tabs: [
                Tab(icon: Icon(Icons.group),),
                Tab(text: 'Chats',),
                Tab(text: 'Calls',),
                Tab(text: 'Status',),
              ]),
            ),
            body: TabBarView(children: [

              Groups(),
              FirstScreen(),
              SecondScreen(),
              Status(),
            ]),
          ),
      ),
    );
  }
}
