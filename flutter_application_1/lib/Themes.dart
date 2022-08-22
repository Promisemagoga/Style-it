import 'package:flutter/material.dart';
import 'package:flutter_application_1/Dashboard.dart';

import 'Fonts.dart';

class Themes extends StatelessWidget {
  const Themes({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
       theme: ThemeData(
        colorScheme: ColorScheme.fromSwatch(
          primarySwatch: Colors.pink
        ),
              ),
      home: Scaffold(
        appBar: AppBar(
          
          title: const Text('Screen 1'),
          actions: <Widget>[
            IconButton(
              onPressed: () => {},
              icon: const Icon(Icons.add_alert),
              color: Colors.lime,
            )
          ],
        ),
        body: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: [
              Center(
                child: Text('Welcome!'),
              ),
            ]),
      ),
    );
  }
}
