import 'package:flutter/material.dart';
import 'package:flutter_application_1/Dashboard.dart';
import 'package:google_fonts/google_fonts.dart';

import 'Ringtones.dart';

class Fonts extends StatelessWidget {
  const Fonts({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSwatch(primarySwatch: Colors.pink),
      ),
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Fonts'),
        ),
        body: Container(
                  height: 400,
                  child: ListView(
                    children: [
                    Padding(
                  padding: EdgeInsets.symmetric(horizontal: 15),
                  child: TextField(
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'This is google fonts',
                                          ),
                  ),
                ),
                      

                    ],
                  ),
      ),
     ) );
  }
}
