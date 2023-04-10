import 'package:flutter/material.dart';

import 'contactClass.dart';
import 'listContact.dart';
import 'page.dart';

class FormContact extends StatefulWidget {
  const FormContact({Key? key}) : super(key: key);

  @override
  State<FormContact> createState() => _FormContactState();
}

class _FormContactState extends State<FormContact> {
  TextEditingController nameController = TextEditingController();
  TextEditingController numberController = TextEditingController();
  TextEditingController emailController = TextEditingController();

  List<Contact> contactList = List.empty(growable: true);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('Add Contact'),
      ),
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
              controller: numberController,
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
                String contact = numberController.text.trim();
                String email = emailController.text.trim();

                if (name.isNotEmpty && contact.isNotEmpty) {
                  contactList
                      .add(Contact(name: name, contact: contact, email: email));
                }
                nameController.text = '';
                numberController.text = '';
                emailController.text = '';
                print(contactList.length);
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) =>
                            ListContact(name,contact as int)));
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
