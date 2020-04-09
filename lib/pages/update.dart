import 'package:flutter/material.dart';
import '../models/Update.dart';

class UpdatePage extends StatelessWidget {
  UpdatePage({Key key }) : super(key: key);

  final items = Update.getUpdates();

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
      body: ListView.builder(
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
              SnackBar(content: Text('Index @ $index'), duration: Duration(seconds: 2),);
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
   return Container(
     padding: EdgeInsets.only(top: 10.0, bottom: 10.0),
     child:  Row(
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
         )
       ],
     )
   );
  }
}
