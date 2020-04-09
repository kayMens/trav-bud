import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


class EmergencyPage extends StatefulWidget {
  EmergencyPage({Key key }) : super(key : key);
  @override
  _EmergencyPageState createState() => _EmergencyPageState();
}

class _EmergencyPageState extends State<EmergencyPage> {

  void makeCall() {

  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Emergency',
          style: TextStyle(
            fontFamily: 'Cabin',
          ),
        ),
        backgroundColor: Colors.amber[400],
        centerTitle: true,
      ),
      body: ListView(
        children: <Widget>[
          Container(
              padding: EdgeInsets.only(top: 16.0),
              child: Row(
              children: <Widget>[
                Stack(
                  children: <Widget>[
                    Container(
                      margin: EdgeInsets.fromLTRB(0.0, 40.0, 0.0, 0.0),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.only(
                            topRight: Radius.circular(20.0),
                            bottomRight: Radius.circular(20.0)
                        ),
                        color: Colors.amber[200],
                      ),
                      child: SizedBox(
                        height: 66.0,
                        width: 122.0,
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.fromLTRB(35.0, 10.0, 0.0, 0.0),
                      child: Icon(
                        Icons.security,
                        size: 82,
                      ),
                    )
                  ],
                ),
                Expanded(
                  child: Container(
                    padding: EdgeInsets.all(5.0),
                    alignment: Alignment.center,
                    child: Column(
                      children: <Widget>[
                        Padding(
                          padding: EdgeInsets.fromLTRB(0.0, 5.0, 0.0, 10.0),
                          child: Text('Request Police Assistance',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 23.5,
                              fontFamily: 'Cabin',
                            ),
                            textAlign: TextAlign.center,
                          )
                        ),
                        SizedBox(
                          width: 110.0,
                          height: 26.0,
                          child: RaisedButton(
                            color: Colors.teal,
                            textColor: Colors.white,
                            shape: RoundedRectangleBorder(
                                borderRadius:BorderRadius.circular(30.0)
                            ),
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: <Widget>[
                                Padding(
                                  padding: EdgeInsets.only(right: 5.0),
                                  child: Icon(
                                    Icons.call,
                                    size: 12.0,
                                  ),
                                ),
                                Text('Make Call',
                                  style: TextStyle(
                                    fontFamily: 'Cabin',
                                    fontSize: 15.0
                                  ),
                                )
                              ],
                            ),
                            onPressed: makeCall,
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ],
            )
          ),
          Container(
              padding: EdgeInsets.only(top: 16.0),
              child: Row(
              children: <Widget>[
                Stack(
                  children: <Widget>[
                    Container(
                      margin: EdgeInsets.fromLTRB(0.0, 40.0, 0.0, 0.0),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.only(
                            topRight: Radius.circular(20.0),
                            bottomRight: Radius.circular(20.0)
                        ),
                        color: Colors.amber[200],
                      ),
                      child: SizedBox(
                        height: 66.0,
                        width: 122.0,
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.fromLTRB(35.0, 10.0, 0.0, 0.0),
                      child: Icon(
                        Icons.local_shipping,
                        size: 82,
                      ),
                    )
                  ],
                ),
                Expanded(
                  child: Container(
                    padding: EdgeInsets.all(5.0),
                    alignment: Alignment.center,
                    child: Column(
                      children: <Widget>[
                        Padding(
                          padding: EdgeInsets.fromLTRB(0.0, 5.0, 0.0, 10.0),
                          child: Text('Request Ambulance Service',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 23.5,
                              fontFamily: 'Cabin',
                            ),
                            textAlign: TextAlign.center,
                          )
                        ),
                        SizedBox(
                          width: 110.0,
                          height: 26.0,
                          child: RaisedButton(
                            color: Colors.teal,
                            textColor: Colors.white,
                            shape: RoundedRectangleBorder(
                                borderRadius:BorderRadius.circular(30.0)
                            ),
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: <Widget>[
                                Padding(
                                  padding: EdgeInsets.only(right: 5.0),
                                  child: Icon(
                                    Icons.call,
                                    size: 12.0,
                                  ),
                                ),
                                Text('Make Call',
                                  style: TextStyle(
                                    fontFamily: 'Cabin',
                                    fontSize: 15.0
                                  ),
                                )
                              ],
                            ),
                            onPressed: makeCall,
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ],
            )
          ),
          Container(
              padding: EdgeInsets.only(top: 16.0),
              child: Row(
              children: <Widget>[
                Stack(
                  children: <Widget>[
                    Container(
                      margin: EdgeInsets.fromLTRB(0.0, 40.0, 0.0, 0.0),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.only(
                            topRight: Radius.circular(20.0),
                            bottomRight: Radius.circular(20.0)
                        ),
                        color: Colors.amber[200],
                      ),
                      child: SizedBox(
                        height: 66.0,
                        width: 122.0,
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.fromLTRB(35.0, 10.0, 0.0, 0.0),
                      child: Icon(
                        Icons.security,
                        size: 82,
                      ),
                    )
                  ],
                ),
                Expanded(
                  child: Container(
                    padding: EdgeInsets.all(5.0),
                    alignment: Alignment.center,
                    child: Column(
                      children: <Widget>[
                        Padding(
                          padding: EdgeInsets.fromLTRB(0.0, 5.0, 0.0, 10.0),
                          child: Text('Contact Vehicle Insurer',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 23.5,
                              fontFamily: 'Cabin',
                            ),
                            textAlign: TextAlign.center,
                          )
                        ),
                        SizedBox(
                          width: 110.0,
                          height: 26.0,
                          child: RaisedButton(
                            color: Colors.teal,
                            textColor: Colors.white,
                            shape: RoundedRectangleBorder(
                                borderRadius:BorderRadius.circular(30.0)
                            ),
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: <Widget>[
                                Padding(
                                  padding: EdgeInsets.only(right: 5.0),
                                  child: Icon(
                                    Icons.call,
                                    size: 12.0,
                                  ),
                                ),
                                Text('Make Call',
                                  style: TextStyle(
                                    fontFamily: 'Cabin',
                                    fontSize: 15.0
                                  ),
                                )
                              ],
                            ),
                            onPressed: makeCall,
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ],
            )
          ),
          Container(
            padding: EdgeInsets.only(top: 16.0),
            child: Row(
              children: <Widget>[
                Stack(
                  children: <Widget>[
                    Container(
                      margin: EdgeInsets.fromLTRB(0.0, 40.0, 0.0, 0.0),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.only(
                            topRight: Radius.circular(20.0),
                            bottomRight: Radius.circular(20.0)
                        ),
                        color: Colors.amber[200],
                      ),
                      child: SizedBox(
                        height: 66.0,
                        width: 122.0,
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.fromLTRB(35.0, 10.0, 0.0, 0.0),
                      child: Icon(
                        Icons.verified_user,
                        size: 82,
                      ),
                    )
                  ],
                ),
                Expanded(
                  child: Container(
                    padding: EdgeInsets.all(5.0),
                    alignment: Alignment.center,
                    child: Column(
                      children: <Widget>[
                        Padding(
                          padding: EdgeInsets.fromLTRB(0.0, 5.0, 0.0, 10.0),
                          child: Text('Contact Customer Hotline',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 23.5,
                              fontFamily: 'Cabin',
                            ),
                            textAlign: TextAlign.center,
                          )
                        ),
                        SizedBox(
                          width: 110.0,
                          height: 26.0,
                          child: RaisedButton(
                            color: Colors.teal,
                            textColor: Colors.white,
                            shape: RoundedRectangleBorder(
                                borderRadius:BorderRadius.circular(30.0)
                            ),
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: <Widget>[
                                Padding(
                                  padding: EdgeInsets.only(right: 5.0),
                                  child: Icon(
                                    Icons.call,
                                    size: 12.0,
                                  ),
                                ),
                                Text('Make Call',
                                  style: TextStyle(
                                    fontFamily: 'Cabin',
                                    fontSize: 15.0
                                  ),
                                )
                              ],
                            ),
                            onPressed: makeCall,
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ],
            )
          ),
        ],
      ),
    );
  }
}
