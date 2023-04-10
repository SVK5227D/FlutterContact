import 'package:flutter/material.dart';

import 'addContact.dart';
import 'listContact.dart';

class MainPage extends StatelessWidget {
  MainPage({super.key});
  var contactListIndex = 0;
  void listView(){
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: const Text("Contact"),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const FormContact(),
                ));
          },
          child: const Text('+'),
        ),
      ),
    );
  }
}
