import 'package:base_getx/services/services_base_getx.dart';
import 'package:flutter/material.dart';

class SecondPage extends StatelessWidget {
  const SecondPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    dynamic argument = BaseGetx().getArguments();

    return Scaffold(
      appBar: AppBar(
        title: Text('Second page'),
      ),
      body: Container(
        child: Center(
            child: ElevatedButton(
          child: Text(argument),
          onPressed: () {
            BaseGetx().goBack();
          },
        )),
      ),
    );
  }
}
