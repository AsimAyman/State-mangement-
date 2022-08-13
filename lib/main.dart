import 'package:flutter/material.dart';
import 'dashboard.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      debugShowCheckedModeBanner: false,
      home: CounterPro(),
    );
  }
}

class CounterPro extends StatefulWidget {
   CounterPro({Key? key}) : super(key: key);

  @override
  State<CounterPro> createState() => _CounterProState();
}

class _CounterProState extends State<CounterPro> {
  int counter = 0;

  @override
  Widget build(BuildContext context) {
    print('main rebuild');
    return Scaffold(
      appBar: AppBar(title: const Text('Demo')),
      body: Center(
        child: Dashboard(counter: counter,
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.add),
        onPressed: () {
          setState(() {
            counter ++;
          });
        },
      ),
    );
  }
}
