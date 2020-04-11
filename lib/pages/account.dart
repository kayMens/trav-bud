import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AccountPage extends StatefulWidget {
  AccountPage({Key key}) : super(key : key);

  @override
  _AccountPage createState() => _AccountPage();
}
class _AccountPage extends State<AccountPage> {
  final GlobalKey _globalKey = GlobalKey();

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
      body: Padding(
        padding: EdgeInsets.fromLTRB(12.0, 20.0, 12.0, 20.0),
        child: ListView(
          children: <Widget>[
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Container(
                  padding: EdgeInsets.only(right: 18.0),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(50.0)
                  ),
                  child: Image.asset('assets/img/back.jpg',
                    width: 80.0,
                    height: 80.0,
                    fit: BoxFit.contain,
                    alignment: Alignment.center,
                  ),
                ),
                Expanded(
                  child: Form(
                    key: _globalKey,
                    child: ListView(
                      shrinkWrap: true,
                      children: <Widget>[
                        Container(
                          margin: EdgeInsets.only(bottom: 12.0),
                          child:  TextFormField(
                            maxLines: 1,
                            textInputAction: TextInputAction.next,
                            keyboardType: TextInputType.text,
                            cursorColor: Colors.amber[300],
                            cursorWidth: 1.0,
                            style: TextStyle(
                                fontFamily: 'Cabin',
                                fontSize: 18.0
                            ),
                            decoration: InputDecoration(
                                hintText: 'Name',
                                floatingLabelBehavior: FloatingLabelBehavior.auto,
                                labelText: 'Name',
                                contentPadding: EdgeInsets.fromLTRB(10.0, 4.0, 10.0, 4.0),
                                border: OutlineInputBorder(
                                  borderSide: BorderSide(color: Colors.teal),
                                    gapPadding: 1.5,
                                  borderRadius: BorderRadius.all(Radius.circular(10.0))
                              )
                            ),
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(bottom: 12.0),
                          child:  TextFormField(
                            maxLines: 1,
                            textInputAction: TextInputAction.next,
                            keyboardType: TextInputType.phone,
                            cursorColor: Colors.amber[300],
                            cursorWidth: 1.0,
                            style: TextStyle(
                                fontFamily: 'Cabin',
                                fontSize: 18.0
                            ),
                            decoration: InputDecoration(
                                hintText: 'Phone',
                                floatingLabelBehavior: FloatingLabelBehavior.auto,
                                labelText: 'Phone',
                                contentPadding: EdgeInsets.fromLTRB(10.0, 4.0, 10.0, 4.0),
                                border: OutlineInputBorder(
                                    borderSide: BorderSide(color: Colors.teal),
                                    gapPadding: 1.5,
                                    borderRadius: BorderRadius.all(Radius.circular(10.0))
                                )
                            ),
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(bottom: 12.0),
                          child: TextFormField(
                            maxLines: 1,
                            textInputAction: TextInputAction.done,
                            keyboardType: TextInputType.emailAddress,
                            cursorColor: Colors.amber[300],
                            cursorWidth: 1.0,
                            style: TextStyle(
                                fontFamily: 'Cabin',
                                fontSize: 18.0
                            ),
                            decoration: InputDecoration(
                                hintText: 'Email',
                                floatingLabelBehavior: FloatingLabelBehavior.auto,
                                labelText: 'Email',
                                contentPadding: EdgeInsets.fromLTRB(10.0, 4.0, 10.0, 4.0),
                                border: OutlineInputBorder(
                                    borderSide: BorderSide(color: Colors.teal),
                                    gapPadding: 1.5,
                                    borderRadius: BorderRadius.all(Radius.circular(10.0))
                                )
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 32.0,
                          width: 90.0,
                          child: new RaisedButton(
                              elevation: 1.0,
                              shape: new RoundedRectangleBorder(
                                  borderRadius: new BorderRadius.circular(30.0)
                              ),
                              color: Colors.teal,
                              child: new Text('Save',
                                  style: new TextStyle(
                                      fontSize: 16.0,
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold,
                                      fontFamily: 'Cabin'
                                  )
                              ),
                              onPressed: null
                          ),
                        ),
                      ],
                    ),
                  ),
                )
              ],
            ),
            Padding(
              padding: EdgeInsets.only(top: 30.0, bottom: 30.0),
              child: Divider(thickness: 1.0, color: Colors.grey, indent: 70.0, endIndent: 70.0,),
            ),
            Text('Update Password',
              style: TextStyle(
                  fontSize: 18.0,
                  fontFamily: 'Cabin',
                  fontWeight: FontWeight.bold
              ),
            ),
            Container(
              child: Form(
                child: ListView(
                  shrinkWrap: true,
                  children: <Widget>[
                    TextFormField(),
                    TextFormField(),
                    TextFormField(),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}