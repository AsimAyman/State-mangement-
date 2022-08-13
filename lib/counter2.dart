import 'package:flutter/material.dart';

class Counter2 extends StatelessWidget {
 Counter2({required this.counter,Key? key}) : super(key: key);
int counter;
  @override
  Widget build(BuildContext context) {
    print('countergot 2 rebuild');
    return  Card(
      elevation: 6,
      child: SizedBox(
        width: 150,
        height: 150,
        child: Center(
          child: Text("$counter", style: TextStyle(fontSize: 40)),
        ),
      ),
    );
  }
}
