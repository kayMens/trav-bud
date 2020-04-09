import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app/pages/login.dart';
import 'package:intro_slider/intro_slider.dart';
import 'package:intro_slider/slide_object.dart';

class IntroPage extends StatefulWidget {
  IntroPage({Key key}) : super(key : key);

  @override
  _IntroPageState createState() => new _IntroPageState();
}

class _IntroPageState extends State<IntroPage> {
  List<Slide> slides = new List();

  Function goToSlide;
  void nextPress() {
    this.goToSlide(1);
  }
  void startPress() {
    this.goToSlide(2);
  }
  void loginPress() {
    Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => LoginPage()
        ));
  }
  @override
  void initState() {
    super.initState();
    slides.add(
      new Slide(
        marginTitle: EdgeInsets.fromLTRB(0.0, 40.0, 0.0, 0.0),
        widgetDescription: Column(
         crossAxisAlignment: CrossAxisAlignment.center,
         children: <Widget>[
           Text('Journey Through',
             style: TextStyle(
               color: Colors.amber[400],
               fontSize: 24,
               fontWeight: FontWeight.bold,
               fontFamily: 'Cabin'
             ),
           ),
           Padding(
             padding: EdgeInsets.fromLTRB(5.0, 20.0, 5.0, 5.0),
             child: Text('Next, we will build our form logo. In the repository, '
                 'there is an asset folder with the following flutter-icon.png file.'
                 'To import into our project, add the following line in pubspec.yaml followed by',
               style: TextStyle(
                   color: Colors.grey[400],
                   fontSize: 15.5,
                   height: 1.8,
                   fontFamily: 'Cabin'
               ),
               maxLines: 4,
               textAlign: TextAlign.center,
             ),
           ),
           Padding(
             padding: EdgeInsets.fromLTRB(0.0, 50.0, 0.0, 0.0),
             child: SizedBox(
             height: 45.0,
             width: 200.0,
             child: new RaisedButton(
               elevation: 1.0,
               shape: new RoundedRectangleBorder(
                   borderRadius: new BorderRadius.circular(30.0)
               ),
               color: Colors.teal,
               child: new Text('Welcome',
                   style: new TextStyle(
                       fontSize: 18.0,
                       color: Colors.white,
                       fontFamily: 'Cabin',
                       fontWeight: FontWeight.bold
                   )
               ),
               onPressed: nextPress,
             ),
           ),
           )
         ],
       ),
        pathImage: 'assets/img/mouse.png',
        backgroundColor: Colors.white,
      )
    );
    slides.add(
        new Slide(
          marginTitle: EdgeInsets.fromLTRB(0.0, 40.0, 0.0, 0.0),
          widgetDescription: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Text('Share Location',
                style: TextStyle(
                  color: Colors.amber[400],
                  fontSize: 24,
                  fontWeight: FontWeight.w700,
                    fontFamily: 'Cabin',
                ),
              ),
              Padding(
                padding: EdgeInsets.fromLTRB(0.0, 20.0, 0.0, 5.0),
                child: Text('Next, we will build our form logo. In the repository, '
                    'there is an asset folder with the following flutter-icon.png file.'
                    'To import into our project, add the following line in pubspec.yaml followed by',
                  style: TextStyle(
                    color: Colors.grey[400],
                    fontSize: 15.5,
                    height: 1.8,
                      fontFamily: 'Cabin',
                  ),
                  maxLines: 4,
                  textAlign: TextAlign.center,
                ),
              ),
              Padding(
                padding: EdgeInsets.fromLTRB(0.0, 50.0, 0.0, 0.0),
                child: SizedBox(
                  height: 45.0,
                  width: 200.0,
                  child: new RaisedButton(
                    elevation: 1.0,
                    shape: new RoundedRectangleBorder(
                        borderRadius: new BorderRadius.circular(30.0)
                    ),
                    color: Colors.teal,
                    child: new Text('Next',
                        style: new TextStyle(
                            fontSize: 18.0,
                            color: Colors.white,
                            fontFamily: 'Cabin',
                            fontWeight: FontWeight.bold
                        )
                    ),
                    onPressed: startPress,
                  ),
                ),
              )
            ],
          ),
          pathImage: 'assets/img/mouse.png',
          backgroundColor: Colors.white,
        )
    );
    slides.add(
        new Slide(
          marginTitle: EdgeInsets.fromLTRB(0.0, 40.0, 0.0, 0.0),
          widgetDescription: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Text('Emergency Request',
                style: TextStyle(
                  color: Colors.amber[400],
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                    fontFamily: 'Cabin',
                ),
              ),
              Padding(
                padding: EdgeInsets.fromLTRB(0.0, 20.0, 0.0, 5.0),
                child: Text('Next, we will build our form logo. In the repository, '
                    'there is an asset folder with the following flutter-icon.png file.'
                    'To import into our project, add the following line in pubspec.yaml followed by',
                  style: TextStyle(
                    color: Colors.grey[400],
                    fontSize: 15.5,
                    height: 1.8,
                    fontFamily: 'Cabin',
                  ),
                  maxLines: 4,
                  textAlign: TextAlign.center,
                ),
              ),
              Padding(
                padding: EdgeInsets.fromLTRB(0.0, 50.0, 0.0, 0.0),
                child: SizedBox(
                  height: 45.0,
                  width: 200.0,
                  child: new RaisedButton(
                    elevation: 1.0,
                    shape: new RoundedRectangleBorder(
                        borderRadius: new BorderRadius.circular(30.0)
                    ),
                    color: Colors.teal,
                    child: new Text( 'Get Started',
                        style: new TextStyle(
                            fontSize: 18.0,
                            color: Colors.white,
                            fontFamily: 'Cabin',
                          fontWeight: FontWeight.bold,
                        )
                    ),
                    onPressed: loginPress,
                  ),
                ),
              )
            ],
          ),
          pathImage: 'assets/img/mouse.png',
          backgroundColor: Colors.white,
        )
    );
  }
  @override
  Widget build(BuildContext context) {
    return new IntroSlider(
      slides: this.slides,
      styleNameSkipBtn: TextStyle(
        color: Colors.amber[400],
        fontFamily: 'Cabin',
      ),
      styleNamePrevBtn: TextStyle(
        color: Colors.amber[400],
        fontFamily: 'Cabin',
      ),
      colorDot: Colors.amber[100],
      colorActiveDot: Colors.amber[400],
      isShowDoneBtn: false,
      isShowPrevBtn: true,
      refFuncGoToTab: (refFunc){
        this.goToSlide = refFunc;
      },
    );
  }
}