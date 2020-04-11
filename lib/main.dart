import 'dart:collection';
import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:overlay_container/overlay_container.dart';
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
  int _selectedIndex = 0;

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
              MapPage(selectedIndex: _selectedIndex),
              MePage(),
              UpdatePage(),
              EmergencyPage()
            ],
          )
      ), // This trailing comma makes auto-formatting nicer for build methods.
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

class MapPage extends StatefulWidget {
  MapPage({Key key, this.selectedIndex}) : super(key : key);

  final int selectedIndex;
  @override
  _MapPageState createState() => _MapPageState();
}
class _MapPageState extends State<MapPage> {
  GoogleMapController mapController;
  bool _showOverlay = false;
  bool _isOnRoute = false;
  final LatLng _center = const LatLng(45.521363, -122.677433);
  Set<Marker> _markers = {};
  
  void _onMapCreated(GoogleMapController controller) {
    mapController = controller;
  }

  void _toggleOverlays() {
    setState(() {
      _showOverlay = !_showOverlay;
    });
  }

  Widget renderOverlay() {
     return Container(
       padding: EdgeInsets.fromLTRB(16.0, 20.0, 16.0, 20.0),
       decoration: BoxDecoration(
         color: Colors.grey[800],
         backgroundBlendMode: BlendMode.multiply
       ),
         child: Column(
           crossAxisAlignment: CrossAxisAlignment.start,
           mainAxisAlignment: MainAxisAlignment.center,
           children: <Widget>[
             Icon(
               Icons.directions_car,
               color: Colors.white,
               size: 24.0,
             ),
             Text('10 km',
               style: TextStyle(
                   color: Colors.white,
                   fontSize: 22.0,
                   fontFamily: 'Cabin'
               ),
             ),
             Padding(
               padding: EdgeInsets.only(top: 24.0),
             ),
             Icon(
               Icons.timer,
               color: Colors.white,
               size: 24.0,
             ),
              Text('1hr 20m',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 22.0,
                    fontFamily: 'Cabin'
                ),
              ),
             Padding(
               padding: EdgeInsets.only(top: 24.0),
             ),
             Icon(
               Icons.cloud,
               color: Colors.white,
               size: 24.0,
             ),
             Text('35C',
               style: TextStyle(
                 color: Colors.white,
                 fontSize: 22.0,
                   fontFamily: 'Cabin'
               ),
             )
           ],
       )
     );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: (widget.selectedIndex == 0)? FloatingActionButton(
          onPressed: _toggleOverlays,
          tooltip: 'Explore',
          child: new Icon(Icons.near_me),
          foregroundColor: Colors.white
      ) : null,
      body: Stack(
        fit: StackFit.expand,
        children: <Widget>[
           Container(
             child: GoogleMap(
               onMapCreated: _onMapCreated,
               initialCameraPosition: CameraPosition(target: _center, zoom: 11.0),
               markers: {
                 Marker(
                   markerId: MarkerId('ss'),
                   position: _center,
                   icon:  BitmapDescriptor.defaultMarkerWithHue(100)
                 )
               },
               mapToolbarEnabled: false,
             ),
           ),
           (_showOverlay)? renderOverlay() : Container()
        ]
      ),
    );
  }
}
