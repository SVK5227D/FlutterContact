import 'package:flutter/material.dart';
import 'addContact.dart';

class AddContact extends StatelessWidget {
  const AddContact({Key? key}) : super(key: key);

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
        body: const ContactAdd(),
      ),
    );
  }
}

class ContactAdd extends StatelessWidget {
  const ContactAdd({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: const [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 60, vertical: 14),
            child: Align(
              alignment: Alignment.topLeft,
              child: TextButton(
                onPressed: null,
                child: Text(
                  '9472318476',
                  style: TextStyle(fontSize: 20, color: Colors.black),
                ),
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 60, vertical: 14),
            child: Align(
              alignment: Alignment.topLeft,
              child: TextButton(
                  onPressed: null,
                  child: Text(
                    '6845982138',
                    style: TextStyle(fontSize: 20, color: Colors.black),
                  )),
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 60, vertical: 14),
            child: Align(
              alignment: Alignment.topLeft,
              child: TextButton(
                  onPressed: null,
                  child: Text(
                    '6382169091',
                    style: TextStyle(fontSize: 20, color: Colors.black),
                  )),
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 60, vertical: 14),
            child: Align(
              alignment: Alignment.topLeft,
              child: TextButton(
                  onPressed: null,
                  child: Text(
                    '6845982138',
                    style: TextStyle(fontSize: 20, color: Colors.black),
                  )),
            ),
          ),
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
