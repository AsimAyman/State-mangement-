import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'MyProvider.dart';

class Counter2 extends StatelessWidget {
 Counter2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var p = Provider.of<MyProvider>(context);
    print('counter 2 rebuild');
    return  Card(
      elevation: 6,
      child: SizedBox(
        width: 150,
        height: 150,
        child: Center(
          child: Text(p.counter.toString(), style: TextStyle(fontSize: 40))
        ),
      ),
    );
  }
}
