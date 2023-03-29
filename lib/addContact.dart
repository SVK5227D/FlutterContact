import 'package:flutter/material.dart';

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
        body: const ContactAdd3(),
      ),
    );
  }
}

class ContactAdd3 extends StatelessWidget {
  const ContactAdd3({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: const [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 50, vertical: 10),
            child: TextField(
              decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Name',
                  hintText: '@example(Ronaldo)'),
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 50, vertical: 10),
            child: TextField(
              decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Mobile Number',
                  hintText: '@example(1234567890)'),
              keyboardType: TextInputType.number,
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 50, vertical: 10),
            child: TextField(
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'Email-Id',
                hintText: '@example(xyz123@gmail.com)',
              ),
            ),
          ),
          Padding(
              padding: EdgeInsets.symmetric(horizontal: 120, vertical: 30),
              child: FilledButton(
                  onPressed: null,
                  child: Text(
                    'Submit',
                    style: TextStyle(fontSize: 20),
                  )))
        ],
      ),
    );

  }
}
