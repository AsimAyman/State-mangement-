import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'MyProvider.dart';

class Counter1 extends StatelessWidget {
  Counter1({ Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    print('counter 1 rebuild');
    var p = Provider.of<MyProvider>(context);
    return  Card(
      elevation: 6,
      child: SizedBox(
        width: 150,
        height: 150,
        child: Center(
          child: Text(p.counter.toString(), style: TextStyle(fontSize: 40)),
        ),
      ),
    );
  }
}
