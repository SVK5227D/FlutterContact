import 'package:flutter/material.dart';

class ListContact extends StatelessWidget {
  List contactView = [];
  final String name;
  final int number;

  ListContact
      ({
      name : 'this.name',
      number : 'this.number',
    required this.name, required this.number
});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Row(
          children: const [
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 50, vertical: 10),
              child:
              TextButton(onPressed: null,
                child: Text('${name}'),
              ),
            ),
          ],
        ),
      ),
    )
  }
}
