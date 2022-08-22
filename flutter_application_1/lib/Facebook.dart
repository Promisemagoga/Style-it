import 'package:flutter/material.dart';
import 'package:flutter_application_1/Dashboard.dart';
import 'Fonts.dart';
import 'Ringtones.dart';
import 'Themes.dart';

class Facebook extends StatelessWidget {
  const Facebook({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSwatch(primarySwatch: Colors.pink),
      ),
      home: Scaffold(
        appBar: AppBar(
           toolbarHeight: 100,
          leadingWidth: 80,
          elevation: 15,
          title: Column(
            children: [
              Icon(Icons.facebook),
              const Text(
                'Facebook',
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 30,
                    fontWeight: FontWeight.bold),
              ),
              Padding(padding: EdgeInsets.only(top: 10)),
              const Text(
                "Be the interior designer of your own facebook",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 15,
                    fontStyle: FontStyle.italic),
              )
            ],
          ),
          backgroundColor: Colors.purple,
          centerTitle: true,
          leading: IconButton(
            onPressed: () => {
              Navigator.pop(
                  context, MaterialPageRoute(builder: (context) => Dashboard()))
            },
            icon: const Icon(Icons.arrow_back),
            splashColor: Colors.pink,
            color: Colors.white,
          ),
          actions: [Icon(Icons.search)],
          shape: RoundedRectangleBorder(
              side: BorderSide(width: 3, color: Colors.deepPurpleAccent),
              borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(2000),
                  bottomRight: Radius.circular(2000))),
          bottom: PreferredSize(
            preferredSize: Size.fromHeight(200),
            child: SizedBox(),
          ),
        ),
        body: Scaffold(
          body: SingleChildScrollView(
            child: Column(
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.only(top: 60.0),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 15),
                  child: TextField(
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'Paste link',
                      hintText: 'paste link',
                    ),
                  ),
                ),
              ],
            ),
          ),
          bottomNavigationBar: BottomAppBar(
              shape: const CircularNotchedRectangle(),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: <Widget>[
                  IconButton(
                    onPressed: () => {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => Ringtones()))
                    },
                    icon: const Icon(Icons.notifications),
                    splashColor: Colors.orange,
                    color: Colors.grey,
                  ),
                  IconButton(
                    onPressed: () => {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => Fonts()))
                    },
                    icon: const Icon(Icons.font_download_rounded),
                    splashColor: Colors.orange,
                    color: Colors.grey,
                  ),
                  IconButton(
                    onPressed: () => {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => Themes()))
                    },
                    icon: const Icon(Icons.style_outlined),
                    splashColor: Colors.orange,
                    color: Colors.grey,
                  ),
                ],
              )),
        ),
      ),
    );
  }
}
