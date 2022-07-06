import 'package:base_getx/services/getx/navigate_getx.dart';
import 'package:base_getx/services/getx/untils_getx.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home page'),
      ),
      body: Container(
        child: Center(
            child: ElevatedButton(
          child: Text('HomePage'),
          onPressed: () {
            UntilsGetx().dialog(
              title: 'test title',
              content: Text('Content'),
              titleStyle: TextStyle(color: Colors.red.withOpacity(0.4)),
              onCancel: () {},
              onConfirm: () {},
              customCancel: ElevatedButton(
                  onPressed: () {
                    NavigateGetx().goBack();
                  },
                  child: Text('Cancel')),
              customConfirm: Padding(
                padding: const EdgeInsets.only(left: 20.0),
                child: ElevatedButton(
                    onPressed: () {
                      UntilsGetx().snackbar(
                          title: 'title',
                          message: 'message',
                          backgroundColor: Colors.red);
                    },
                    child: Text('Confirm')),
              ),
            );

            // BaseGetx()
            //     .navigateGetxOff(routeName: '/second', arguments: 'go home');
          },
        )),
      ),
    );
  }
}
