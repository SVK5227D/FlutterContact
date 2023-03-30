
import 'package:flutter/material.dart';
import 'addContact.dart';
import 'listContact.dart';

class AddContact extends StatelessWidget {
  const AddContact({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Contact'),
          centerTitle: true,
          backgroundColor: Colors.grey,
        ),
        body: ContactAdd(),
      ),
    );
  }
}

class ContactAdd extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    Object? contacts = ModalRoute.of(context)?.settings.arguments;
    return Scaffold(
      body: ListView(
        children:  [
          contacts.toString()
          // Text(
          //   '$name',
          //   textAlign: TextAlign.center,
          //   style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
          // ),
          // Text(
          //   '$contact',
          //   textAlign: TextAlign.center,
          // ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const ContactAdd2(),
              ));
        },
        child: const Text(
          '+',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}

// List<Contact> contacts = List.empty(growable: true);
// Widget getRow(int index) {
//   return ListTile(
//     title: Column(
//       children: [
//         Text(
//           contacts[index].name,
//           style: const TextStyle(fontWeight: FontWeight.bold),
//         ),
//         Text(contacts[index].contact),
//       ],
//     ),
//   );
// }
