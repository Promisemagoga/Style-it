import 'dart:html';

import 'package:flutter/material.dart';
import 'package:flutter_application_1/Dashboard.dart';
import 'package:flutter_application_1/Facebook.dart';
import 'package:flutter_application_1/Ringtones.dart';
import 'package:flutter_application_1/Fonts.dart';
import 'package:flutter_application_1/WhatsApp.dart';

import 'Themes.dart';

class Dashboard extends StatelessWidget {
  const Dashboard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage(
                    'Assets/Images/4a7161de9f2939090c2b6aea0ca967da.jpg'),
                fit: BoxFit.cover)),
        child: Scaffold(
          backgroundColor: Colors.transparent,
          body: Stack(
            children: [
              Container(
                padding: EdgeInsets.only(left: 35, top: 130),
                child: Text(
                  'Welcome\nBack',
                  style: TextStyle(color: Colors.white, fontSize: 33),
                ),
              ),
              SingleChildScrollView(
                  child: Container(
                padding: EdgeInsets.only(
                    top: MediaQuery.of(context).size.height * 0.5,
                    right: 35,
                    left: 35),
                child: Column(
                  children: [
                    Card(
                      child: ListTile(
                          leading: Icon(Icons.whatsapp),
                          title: Text(
                            'WhatsApp',
                            style: TextStyle(
                                color: Colors.purple[800],
                                fontSize: 30,
                                fontWeight: FontWeight.bold),
                          ),
                          subtitle: Text(
                            'Make your WhatsApp come alive!',
                            style: TextStyle(
                                color: Colors.pink,
                                fontStyle: FontStyle.italic),
                          ),
                          trailing: IconButton(
                            onPressed: () => {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => WhatsApp()))
                            },
                            icon: const Icon(Icons.forward),
                            color: Colors.purple,
                          )),
                      elevation: 8,
                      shadowColor: Colors.pink,
                      margin: EdgeInsets.all(50),
                      shape: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(100),
                          borderSide: BorderSide(color: Colors.pink, width: 1)),
                    ),
                    Card(
                      child: ListTile(
                        leading: Icon(Icons.facebook),
                        title: Text(
                          'Facebook',
                          style: TextStyle(
                              color: Colors.purple[800],
                              fontSize: 30,
                              fontWeight: FontWeight.bold),
                        ),
                        subtitle: Text(
                          'Make your facebook come alive!',
                          style: TextStyle(
                              color: Colors.pink, fontStyle: FontStyle.italic),
                        ),
                        trailing: IconButton(
                          onPressed: () => {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => Facebook()))
                          },
                          icon: const Icon(Icons.forward),
                          color: Colors.purple,
                        ),
                      ),
                      elevation: 8,
                      shadowColor: Colors.pink,
                      margin: EdgeInsets.all(50),
                      shape: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(100),
                          borderSide: BorderSide(color: Colors.pink, width: 1)),
                    )
                  ],
                ),
              ))
            ],
          ),
        ));
  }
}
