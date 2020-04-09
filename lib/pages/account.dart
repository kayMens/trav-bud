import 'package:flutter/material.dart';

class AccountPage extends StatefulWidget {
  AccountPage({Key key}) : super(key : key);

  @override
  _AccountPage createState() => _AccountPage();
}
class _AccountPage extends State<AccountPage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Configure Account',
          style: TextStyle(fontFamily: 'Cabin'),
        ),
        backgroundColor: Colors.amber[400],
        centerTitle: true,
      ),
      body: Container(
        padding: EdgeInsets.all(12.0),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Container(
              padding: EdgeInsets.only(right: 18.0),
              decoration: BoxDecoration(
                shape: BoxShape.circle,
              ),
              child: Image.asset('assets/img/back.jpg',
                width: 100.0,
                height: 100.0,
                fit: BoxFit.contain,
                alignment: Alignment.center,
              ),
            ),
            Expanded(
              child: Form(
                child: ListView(
                  children: <Widget>[
                    TextFormField(

                    )
                  ],
                )
              ),
            )
          ],
        ),
      ),
    );
  }
}