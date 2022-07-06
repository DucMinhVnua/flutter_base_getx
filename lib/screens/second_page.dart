import 'package:base_getx/services/getx/navigate_getx.dart';
import 'package:flutter/material.dart';

class SecondPage extends StatelessWidget {
  const SecondPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    dynamic argument = NavigateGetx().getArguments();

    return Scaffold(
      appBar: AppBar(
        title: Text('Second page'),
      ),
      body: Container(
        child: Center(
            child: ElevatedButton(
          child: Text(argument),
          onPressed: () {
            NavigateGetx().goBack();
          },
        )),
      ),
    );
  }
}
