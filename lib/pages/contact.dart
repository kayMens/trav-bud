import 'package:flutter/material.dart';

class ContactPage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Contacts',
          style: TextStyle(fontFamily: 'Cabin'),
      ),
      backgroundColor: Colors.amber[400],
      centerTitle: true,
      ),
      body: Container(),
    );
  }
}