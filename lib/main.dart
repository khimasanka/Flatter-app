import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Flutter'),
          leading: IconButton(
            icon: const Icon(Icons.menu),
            onPressed: () {},
          ),
          actions: [
            IconButton(
              icon: const Icon(Icons.search),
              onPressed: () {},
            ),
            IconButton(
              icon: const Icon(Icons.more_vert),
              onPressed: () {},
            ),
          ],
          bottom: const TabBar(
            tabs: [
              Tab(
                icon: Icon(Icons.directions_car),
              ),
              Tab(
                icon: Icon(Icons.directions_transit),
              ),
              Tab(icon: Icon(Icons.directions_bike)),
            ],
          ),
          elevation: 22.0,
          backgroundColor: Colors.black87,
        ),
        body: TabBarView(
          children: [
            tab1(),
            const Icon(Icons.adb_sharp),
            const Icon(Icons.media_bluetooth_off_sharp),
          ],
        ),
      ),
    );
  }
}

Widget tab1() {
  return Container(
    padding: const EdgeInsets.only(top: 20.0, left: 20.0),
    width: double.infinity,
    color: Colors.red,
    transform: Matrix4.rotationZ(0.1),
    child: const Text(
      'Car Widget Text',
      style: TextStyle(
        fontSize: 20.0,
        fontWeight: FontWeight.bold,
      ),
    ),
  );
}
