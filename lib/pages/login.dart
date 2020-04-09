import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'register.dart';

class LoginPage extends StatefulWidget {
  LoginPage({Key key}) : super(key: key);

  @override
  _LoginPageState createState() => new _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  bool _isLoading = true;
  String _phone;
  String _password;
  final GlobalKey _formKey = new GlobalKey<FormState>();

  void validateAndSubmit() {

  }
  void forgotPassword() {

  }
  void createAccount(){
    Navigator.push(context, MaterialPageRoute(
      builder: (context) => RegisterPage()
    ));
  }
  @override
  Widget build(BuildContext context){
    return Scaffold(
      backgroundColor: Colors.amber[100],
      body: ListView(
        padding: EdgeInsets.fromLTRB(22.0, 134.0, 22.0, 15.0),
        children: <Widget>[
          Text(
            'Hello!',
            textAlign: TextAlign.center,
            style: TextStyle(
                fontSize: 80.0,
                fontWeight: FontWeight.bold,
                fontFamily: 'Cabin'
            ),
          ),
          Text(
            'Sign in to your account',
            textAlign: TextAlign.center,
            style: TextStyle(
                fontSize: 19.0,
                fontFamily: 'Cabin'
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
                          keyboardType: TextInputType.emailAddress,
                          autofocus: false,
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontFamily: 'Cabin'
                          ),
                          textInputAction: TextInputAction.next,
                          decoration: InputDecoration(
                              hintText: 'Phone',
                              border: InputBorder.none,
                              icon: new Icon(
                                Icons.phone,
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
                Container(
                    padding: EdgeInsets.fromLTRB(0.0, 0.0, 8.0, 0.0),
                    alignment: Alignment.centerRight,
                    child: FlatButton(
                        child: Text('Forgot your pasword?',
                          style: TextStyle(
                              color: Colors.grey[500],
                              fontSize: 16.0,
                              fontFamily: 'Cabin'
                          ),
                          textAlign: TextAlign.end,
                        ),
                        onPressed: forgotPassword
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
                        child: new Text('Sign in',
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
                            TextSpan(text: "Don\'t have an account? "),
                            TextSpan(text: 'Create',
                                style: TextStyle(
                                    fontWeight: FontWeight.bold
                                )
                            )
                          ]
                      ),
                    ),
                    onPressed: createAccount,
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
