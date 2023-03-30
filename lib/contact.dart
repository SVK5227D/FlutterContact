import 'package:flutter/material.dart';
import 'addContact.dart';
import 'listContact.dart';

class AddContact extends StatelessWidget {
  AddContact({super.key});

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
        body: ContactAdd(
          name: '',
          contact: '',
          email: '',
        ),
      ),
    );
  }
}

class ContactAdd extends StatelessWidget {
  String name, contact, email;

  ContactAdd(
      {required this.name,
      required this.contact,
      required this.email});
  List<Contact> contacts = List.empty(growable: true);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          contacts.add(name: '$name', contact: '$contact', email:'$email'),

          Text('$name',
            textAlign: TextAlign.center,
            style: const TextStyle(fontWeight: FontWeight.bold,fontSize: 20),),
          Text('$contact',
            textAlign: TextAlign.center,
          )
          // contacts.isEmpty
          //     ? const Text(
          //         "No contact added",
          //         textAlign: TextAlign.center,
          //         style: TextStyle(fontSize: 15),
          //       )
          //     : Expanded(
          //         child: ListView.builder(
          //           itemCount: contacts.length,
          //           itemBuilder: (context, index) => getRow(index),
          //         ),
          //       )
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

// class Contact {
//   String name;
//   String contact;
//   String email;
//   Contact({required this.name, required this.contact, required this.email});
// }
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
