import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class RegisterPage extends StatefulWidget {
  RegisterPage({Key key}) : super(key: key);

  @override
  _RegisterPageState createState() => new _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  String _phone;
  String _password;
  final GlobalKey _formKey = new GlobalKey<FormState>();

  void validateAndSubmit() {

  }
  void loginAccount(){
    Navigator.pop(context);
  }
  @override
  Widget build(BuildContext context){
    return Scaffold(
      backgroundColor: Colors.amber[100],
      body: ListView(
        padding: EdgeInsets.fromLTRB(22.0, 134.0, 22.0, 15.0),
        children: <Widget>[
          Text(
            'Create Account',
            textAlign: TextAlign.center,
            style: TextStyle(
                fontSize: 35.0,
                fontWeight: FontWeight.bold,
                fontFamily: 'Cabin',
            ),
          ),
          Form(
            key: _formKey,
            child: Column(
              children: <Widget>[
                Padding(
                    padding: const EdgeInsets.fromLTRB(0.0, 40.0, 0.0, 0.0),
                    child: Container(
                        padding: EdgeInsets.fromLTRB(22.0, 2.0, 22.0, 2.0),
                        decoration:  BoxDecoration(
                            borderRadius: BorderRadius.circular(26.0),
                            color: Colors.white
                        ),
                        child:  new TextFormField(
                          maxLines: 1,
                          keyboardType: TextInputType.text,
                          autofocus: false,
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontFamily: 'Cabin'
                          ),
                          textInputAction: TextInputAction.next,
                          decoration: InputDecoration(
                              hintText: 'Username',
                              border: InputBorder.none,
                              icon: new Icon(
                                Icons.person,
                                color: Colors.black,
                                size: 22.0,
                              )
                          ),
                          validator: (value) => value.isEmpty ? 'Email can\'t be empty' : null,
                          onSaved: (value) => _phone = value.trim(),
                        )
                    )
                ),
                Padding(
                    padding: const EdgeInsets.fromLTRB(0.0,20.0, 0.0, 0.0),
                    child: Container(
                        padding: EdgeInsets.fromLTRB(22.0, 2.0, 22.0, 2.0),
                        decoration:  BoxDecoration(
                            borderRadius: BorderRadius.circular(26.0),
                            color: Colors.white
                        ),
                        child:  new TextFormField(
                          maxLines: 1,
                          keyboardType: TextInputType.phone,
                          autofocus: false,
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontFamily: 'Cabin'
                          ),
                          textInputAction: TextInputAction.done,
                          decoration: new InputDecoration(
                              hintText: 'Phone',
                              border: InputBorder.none,
//                              errorText: 'Some',
                              icon: new Icon(
                                Icons.phone,
                                color: Colors.black,
                                size: 22.0,
                              )
                          ),
                          validator: (value) => value.isEmpty ? 'Phone can\'t be empty' : null,
                          onSaved: (value) => _password = value.trim(),
                        )
                    )
                ),
                Padding(
                    padding: const EdgeInsets.fromLTRB(0.0,20.0, 0.0, 0.0),
                    child: Container(
                        padding: EdgeInsets.fromLTRB(22.0, 2.0, 22.0, 2.0),
                        decoration:  BoxDecoration(
                            borderRadius: BorderRadius.circular(26.0),
                            color: Colors.white
                        ),
                        child:  new TextFormField(
                          maxLines: 1,
                          keyboardType: TextInputType.visiblePassword,
                          autofocus: false,
                          obscureText: true,
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontFamily: 'Cabin'
                          ),
                          textInputAction: TextInputAction.done,
                          decoration: new InputDecoration(
                              hintText: 'Password',
                              border: InputBorder.none,
//                              errorText: 'Some',
                              icon: new Icon(
                                Icons.lock,
                                color: Colors.black,
                                size: 22.0,
                              )
                          ),
                          validator: (value) => value.isEmpty ? 'Password can\'t be empty' : null,
                          onSaved: (value) => _password = value.trim(),
                        )
                    )
                ),
                Padding(
                    padding: EdgeInsets.fromLTRB(0.0, 75.0, 0.0, 0.0),
                    child: SizedBox(
                      height: 46.0,
                      width: 140.0,
                      child: new RaisedButton(
                        elevation: 1.0,
                        shape: new RoundedRectangleBorder(
                            borderRadius: new BorderRadius.circular(30.0)
                        ),
                        color: Colors.teal,
                        child: new Text('Sign up',
                            style: new TextStyle(
                                fontSize: 22.0,
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontFamily: 'Cabin'
                            )
                        ),
                        onPressed: validateAndSubmit,
                      ),
                    )
                ),
                Container(
                    padding: EdgeInsets.fromLTRB(0.0, 110.5, 0.0, 0.0),
                    alignment: Alignment.bottomCenter,
                    child: FlatButton(
                      child: RichText(
                        text: TextSpan(
                            style: TextStyle(
                                color: Colors.black,
                                fontFamily: 'Cabin'
                            ),
                            children: <TextSpan> [
                              TextSpan(text: "Have account already? "),
                              TextSpan(text: 'Login',
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold
                                  )
                              )
                            ]
                        ),
                      ),
                      onPressed: loginAccount,
                    )
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
