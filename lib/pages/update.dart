import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import '../models/Update.dart';

class UpdatePage extends StatelessWidget {
  UpdatePage({Key key }) : super(key: key);

//  final items = Update.getUpdates();
  final items = [];

  void getUpdates() {

  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Updates',
          style: TextStyle(
            fontFamily: 'Cabin',
          ),
        ),
        backgroundColor: Colors.amber[400],
        centerTitle: true,
      ),
      body: (items.isEmpty)?
      Container(
        color: Colors.white,
        alignment: Alignment.bottomCenter,
        child: Column(
          children: <Widget>[
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text('No updates at the moment',
                    style: TextStyle(
                      color: Colors.grey[400],
                      fontFamily: 'Cabin',
                      fontSize: 20.0
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 12.0),
                    child:  SizedBox(
                      width: 90.0,
                      height: 22.0,
                      child: OutlineButton(
                        color: Colors.teal,
                        textColor: Colors.grey,
                        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20.0)),
                        borderSide: BorderSide(color: Colors.grey),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Padding(
                              padding: EdgeInsets.only(right: 5.0),
                              child: Icon(
                                Icons.sync,
                                size: 12.6,
                              ),
                            ),
                            Text('Retry',
                              style: TextStyle(
                                  fontFamily: 'Cabin',
                                  fontSize: 14.0
                              ),
                            )
                          ],
                        ),
                        onPressed: getUpdates,
                      ),
                    ),
                  )
                ],
              ),
            ),
            SvgPicture.asset('assets/img/nature.svg',
              height: 210,
              colorBlendMode: BlendMode.lighten,
              color: Colors.white24,
              fit: BoxFit.cover,
            ),
          ],
        ),
      ):
      ListView.builder(
        shrinkWrap: true,
        itemCount: items.length,
        itemBuilder: (context, index) {
          return GestureDetector(
            child: UpdateItem(item: items[index]),
            onTap: () {
              /*Navigator.push(context,
                  MaterialPageRoute(
                      builder: (context) => null
                  )
              );*/
              Scaffold.of(context).showSnackBar(
                  SnackBar(
                    content: Text('Index @ $index',
                      style: TextStyle(
                          fontFamily: 'Cabin'
                      ),
                    ),
                    duration: Duration(seconds: 2),
                    behavior: SnackBarBehavior.floating,
                  )
              );
            },
          );
        },
      ),
    );
  }
}

class UpdateItem extends StatelessWidget {
  UpdateItem({Key key, this.item}) : super(key: key);

  final Update item;

  Widget build(BuildContext context) {
   return  Column(
     children: <Widget>[
       Padding(
         padding: EdgeInsets.only(top: 12.0, bottom: 12.0),
         child: GestureDetector(
           onTap: null,
           child: Row(
             children: <Widget>[
               Padding(
                 padding: EdgeInsets.only(left: 14.0, right: 10.0),
                 child: Icon(
                   Icons.adb,
                   size: 32.0,
                 ),
               ),
               Expanded(
                   child: Column(
                     crossAxisAlignment: CrossAxisAlignment.start,
                     children: <Widget>[
                       Text(item.title,
                         style: TextStyle(
                           fontWeight: FontWeight.bold,
                           fontFamily: 'Cabin',
                           fontSize: 18.0,
                           color: Colors.grey[700],
                         ),
                       ),
                       Text(item.message,
                         style: TextStyle(
                             fontFamily: 'Cabin',
                             fontSize: 15.0,
                             color: Colors.grey
                         ),
                       ),
                     ],
                   )
               ),
               Padding(
                 padding: EdgeInsets.only(right: 8.0),
                 child: Text(item.time,
                   style: TextStyle(
                       fontFamily: 'Cabin',
                       color: Colors.grey
                   ),
                 ),
               ),
             ],
           ),
         ),
       ),
       Divider(
         height: 1.0,
         color: Colors.grey,
         indent: 57.0,
       )
     ],
   );
  }
}
