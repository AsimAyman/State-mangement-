import 'package:flutter/material.dart';
import 'package:untitled2/MyProvider.dart';
import 'dashboard.dart';
import 'package:provider/provider.dart';

void main() => runApp(
     ChangeNotifierProvider(create: (context) => MyProvider(),child: const MyApp() ,)
    );

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
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


  @override
  Widget build(BuildContext context) {
    var p = Provider.of<MyProvider>(context,listen: true);
    print('main rebuild');
    return Scaffold(
      appBar: AppBar(title: const Text('Demo')),
      body: Center(
        child: Dashboard(

        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.add),
        onPressed: () {
          p.increment();
        },
      ),
    );
  }
}
