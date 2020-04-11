import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_app/pages/account.dart';
import 'package:flutter_app/pages/contact.dart';

class MePage extends StatelessWidget {

  void logout() {

  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: <Widget>[
          Expanded(
              child: Row(
                children: <Widget>[
                  Expanded(
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.only(
                            bottomRight: Radius.circular(38.0),
                            bottomLeft: Radius.circular(38.0)
                        ),
                        color: Colors.amber[200],
                      ),
                      padding: EdgeInsets.fromLTRB(34.0, 100.0, 26.0, 20.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text('Hello!',
                            style: TextStyle(
                                fontSize: 48.0,
                                fontFamily: 'Cabin',
                                color: Colors.grey[600]
                            ),
                          ),
                          Text('Kwaku Ananse',
                            style: TextStyle(
                                fontSize: 35.0,
                                fontFamily: 'Cabin',
                                fontWeight: FontWeight.w700,
                                color: Colors.teal[900]
                            ),
                          ),
                          Text('How are you enjoying your journey.',
                            style: TextStyle(
                                fontSize: 14.0,
                                fontFamily: 'Cabin',
                                color: Colors.black
                            ),
                          ),
                          Expanded(
                            child: Container()
                          ),
                          Row(
                            children: <Widget>[
                              Expanded(
                                child: Container()
                              ),
                              Container(
                                height: 30.0,
                                width: 80.0,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.all(
                                        Radius.circular(20.0)
                                    ),
                                    border: Border.all(
                                        color: Colors.amber,
                                        width: 1.8
                                    )
                                ),
                                child: FlatButton(
                                  child: Text('Logout',
                                      style: TextStyle(
                                          fontFamily: 'Cabin',
                                          fontWeight: FontWeight.bold,
                                          color: Colors.grey[700],
                                      )
                                  ),
                                  onPressed: logout,
                                ),
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                ],
              )
          ),
          Expanded(
              child:   ListView(
                shrinkWrap: true,
                padding: EdgeInsets.fromLTRB(20.0, 30.0, 20.0, 40.0),
                children: <Widget>[
                  Card(
                    color: Colors.white,
                    child: Row(
                      children: <Widget>[
                        Container(
                          padding: EdgeInsets.fromLTRB(10.0, 5.0, 10.0, 5.0),
                          child: Icon(
                            Icons.account_circle,
                            color: Colors.red[200],
                            size: 28.0,
                          ),
                        ),
                        Expanded(
                          child: RichText(
                            text: TextSpan(
                              style: TextStyle(
                                  fontSize: 15.0,
                                  color: Colors.grey[700],
                                  fontFamily: 'Cabin',
                              ),
                              children: <TextSpan>[
                                TextSpan(text: 'Configure your '),
                                TextSpan(text: 'Account',
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold
                                  )
                                )
                              ]
                            ),
                          ),
                        ),
                        Container(
                          alignment: Alignment.centerRight,
                          child: FlatButton(
                            padding: EdgeInsets.fromLTRB(40.0, 5.0, 1.0, 5.0),
                            child: Icon(
                              Icons.chevron_right,
                              size: 28.0,
                              color: Colors.grey[600],
                            ),
                            onPressed:  () {
                              Navigator.push(context,
                                  MaterialPageRoute(
                                      builder: (context) => AccountPage()
                                  )
                              );
                            },
                          ),
                        )
                      ],
                    ),
                  ),
                  Card(
                    color: Colors.white,
                    child: Row(
                      children: <Widget>[
                        Container(
                          padding: EdgeInsets.fromLTRB(10.0, 5.0, 10.0, 5.0),
                          child: Icon(
                            Icons.supervised_user_circle,
                            color: Colors.orange[200],
                            size: 30.0,
                          ),
                        ),
                        Expanded(
                          child: RichText(
                            text: TextSpan(
                                style: TextStyle(
                                    fontSize: 15.0,
                                    fontFamily: 'Cabin',
                                    color: Colors.grey[700],
                                ),
                                children: <TextSpan>[
                                  TextSpan(text: 'Setup your '),
                                  TextSpan(text: 'Contacts',
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold
                                      )
                                  )
                                ]
                            ),
                          ),
                        ),
                        Container(
                          alignment: Alignment.centerRight,
                          child: FlatButton(
                            padding: EdgeInsets.fromLTRB(40.0, 5.0, 1.0, 5.0),
                            child: Icon(
                              Icons.chevron_right,
                              size: 28.0,
                              color: Colors.grey[600],
                            ),
                            onPressed: () {
                              Navigator.push(context,
                                MaterialPageRoute(
                                  builder: (context) => ContactPage()
                                )
                             );
                            },
                          ),
                        )
                      ],
                    ),
                  ),
                  Card(
                    color: Colors.white,
                    child: Row(
                      children: <Widget>[
                        Container(
                          padding: EdgeInsets.fromLTRB(10.0, 5.0, 10.0, 5.0),
                          child: Icon(
                            Icons.settings,
                            color: Colors.lime[200],
                            size: 30.0,
                          ),
                        ),
                        Expanded(
                          child: RichText(
                            text: TextSpan(
                                style: TextStyle(
                                    fontSize: 15.0,
                                    fontFamily: 'Cabin',
                                    color: Colors.grey[700],
                                ),
                                children: <TextSpan>[
                                  TextSpan(text: 'Edit your '),
                                  TextSpan(text: 'Preferences',
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold
                                      )
                                  )
                                ]
                            ),
                          ),
                        ),
                        Container(
                          alignment: Alignment.centerRight,
                          child: FlatButton(
                            padding: EdgeInsets.fromLTRB(40.0, 5.0, 0.0, 5.0),
                            child: Icon(
                              Icons.chevron_right,
                              size: 28.0,
                              color: Colors.grey[600],
                            ),
                            onPressed:  () {
                              Navigator.push(context,
                                  MaterialPageRoute(
                                      builder: (context) => AccountPage()
                                  )
                              );
                            },
                          ),
                        )
                      ],
                    ),
                  ),
                ],
              )
          )
        ],
      ),
    );
  }
}
