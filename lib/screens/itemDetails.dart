import 'package:flutter/material.dart';

import 'catalog.dart';

class itemDetails extends StatelessWidget {
  static const routeName = '/itemDetails';
  @override
  Widget build(BuildContext context) {
    final args = ModalRoute.of(context)!.settings.arguments as ScreenArguments;
    return Scaffold(
      appBar: AppBar(
        title: Text(args.title, style: Theme.of(context).textTheme.headline1),
        backgroundColor: Theme.of(context).primaryColor,
      ),
      body: Center(
        child: Container(
          color: Theme.of(context).primaryColorLight,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text("Item ID = "),
              ),
              Text(args.message),
              const Divider(height: 4, color: Colors.black),
              //_CartTotal()
            ],
          ),
        ),
      ),
    );
  }
}