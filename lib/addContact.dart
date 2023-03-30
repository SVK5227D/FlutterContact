
import 'package:flutter/material.dart';

import 'contact.dart';
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
  TextEditingController nameController = TextEditingController();
  TextEditingController contactController = TextEditingController();
  TextEditingController emailController = TextEditingController();

  List<Contact> contacts = List.empty(growable: true);

  ContactAdd3({super.key});

  // ContactAdd3({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 50, vertical: 10),
            child: TextField(
              controller: nameController,
              decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Name',
                  hintText: '@example(Ronaldo)'),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 50, vertical: 10),
            child: TextField(
              controller: contactController,
              decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Mobile Number',
                  hintText: '@example(1234567890)'),
              keyboardType: TextInputType.number,
              maxLength: 10,
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 50, vertical: 10),
            child: TextField(
              controller: emailController,
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'Emailid',
                hintText: '@example(xyz123@gmail.com)',
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 120, vertical: 30),
            child: ElevatedButton(
              onPressed: () {

                String name = nameController.text.trim();
                String contact = contactController.text.trim();
                String email = emailController.text.trim();
                if (name.isNotEmpty && contact.isNotEmpty) {
                  contacts
                      .add(Contact(name: name, contact: contact, email: email));
                  // To clear the input field
                  nameController.text = '';
                  contactController.text = '';
                  emailController.text = '';
                  for(var i=0; i<contacts.length; i++){
                    print(contacts[i].name);
                    print(contacts[i].contact);
                    print(contacts[i].email);
                  }
                }
                Navigator.push(context,
                  MaterialPageRoute(builder: (BuildContext context) => ContactAdd(
                    name : name,
                    contact : contact,
                    email :email
                  ))
                );
              },
              child: const Text(
                'Submit',
                style: TextStyle(fontSize: 20),
              ),
            ),
          ),
        ],
      ),
    );
  }
}