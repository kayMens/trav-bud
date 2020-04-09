import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'pages/intro.dart';
import 'pages/login.dart';
import 'pages/me.dart';
import 'pages/emergency.dart';
import 'pages/update.dart';

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  final int _isLoggedIn = 0;
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'Travel Buddy',
      theme: new ThemeData(
        primarySwatch: Colors.teal,
        dividerColor: Colors.grey
      ),
      home: (_isLoggedIn == 0)? new HomePage(title: 'Travel Buddy') : new IntroPage(),
    );
  }
}

class HomePage extends StatefulWidget {
  HomePage({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _HomePageState createState() => new _HomePageState();
}

class _HomePageState extends State<HomePage> {
  GoogleMapController mapController;
  int _selectedIndex = 0;
  final LatLng _center = const LatLng(45.521363, -122.677433);

  void _onMapCreated(GoogleMapController controller) {
    mapController = controller;
  }

  GoogleMap renderMap() {
    return GoogleMap(
      onMapCreated: _onMapCreated,
      initialCameraPosition: CameraPosition(target: _center, zoom: 11.0),
    );
  }

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      body: SafeArea(
          top: false,
          child: IndexedStack(
            index: _selectedIndex,
            children: <Widget>[
              renderMap(),
              MePage(),
              UpdatePage(),
              EmergencyPage()
            ],
          )
      ),
      floatingActionButton: (_selectedIndex == 0)? FloatingActionButton(
          onPressed: null,
          tooltip: 'Increment',
          child: new Icon(Icons.navigation),
          foregroundColor: Colors.white) : null, // This trailing comma makes auto-formatting nicer for build methods.
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
              icon: Icon(Icons.pin_drop),
              title: Text('Route',
                  style: TextStyle(
                  fontFamily: 'Cabin',
                ),
              )
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.account_circle),
              title: Text('Me',
                style: TextStyle(
                  fontFamily: 'Cabin',
                ),
              )
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.notifications_none),
            title: Text('Updates',
              style: TextStyle(
                fontFamily: 'Cabin',
              ),
            )
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.security),
              title: Text('Emergency',
                style: TextStyle(
                  fontFamily: 'Cabin',
                ),
              )
          )
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.teal[500],
        unselectedItemColor: Colors.grey[400],
        backgroundColor: Colors.white,
        selectedFontSize: 13.5,
        iconSize: 23.4,
        showUnselectedLabels: true,
        selectedLabelStyle: TextStyle(fontWeight: FontWeight.bold),
        onTap: _onItemTapped,
      ),
    );
  }
}

