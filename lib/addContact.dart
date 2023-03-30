// ignore: duplicate_ignore
// ignore: file_names
// ignore_for_file: file_names, use_key_in_widget_constructors

import 'package:flutter/material.dart';

import 'listContact.dart';

class ContactAdd2 extends StatelessWidget {
  const ContactAdd2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Add Contact'),
        ),
        body: ContactAdd3(),
      ),
    );
  }
}

// ignore: must_be_immutable
class ContactAdd3 extends StatelessWidget {
  List<Contact> contact = List.empty(growable: true);

  // ContactAdd3({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 50, vertical: 10),
            child: TextField(
              decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Name',
                  hintText: '@example(Ronaldo)'),
            ),
          ),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 50, vertical: 10),
            child: TextField(
              decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Mobile Number',
                  hintText: '@example(1234567890)'),
              keyboardType: TextInputType.number,
              maxLength: 10,
            ),
          ),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 50, vertical: 10),
            child: TextField(
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'Email-Id',
                hintText: '@example(xyz123@gmail.com)',
              ),
            ),
          ),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 120, vertical: 30),
            child: FilledButton(
              onPressed: null,
              child: Text(
                'Submit',
                style: TextStyle(fontSize: 20),
              ),
            ),
          ),
          Expanded(
            child: ListView.builder(
              itemCount: contact.length,
              itemBuilder: (context, index) => getRow(index),
            ),
          )
        ],
      ),
    );
  }
}

Widget getRow(int index) {
  return ListTile(
    title: Column(
        children: [Text(contact[index].name), Text(contact[index].contact)]),
  );
}
