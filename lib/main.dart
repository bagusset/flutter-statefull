import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int nilai = 0;

  void pressBtnTambah() {
    setState(() {
      nilai = nilai + 1;
    });
  }

  void pressBtnKurang() {
    setState(() {
      nilai = nilai - 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Statefull Widget"),
        ),
        body: Center(
          child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text(
                  nilai.toString(),
                  style: TextStyle(fontSize: 10 + nilai.toDouble()),
                ),
                ElevatedButton(child: Text("Tambah Nilai"), onPressed: pressBtnTambah),
                ElevatedButton(child: Text("Kurang Nilai"), onPressed: pressBtnKurang)
              ]),
        ),
      ),
    );
  }
}
