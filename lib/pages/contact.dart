import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../models/Contact.dart';

class ContactPage extends StatelessWidget {

  final items = Contact.getContact();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Contacts',
          style: TextStyle(fontFamily: 'Cabin'),
      ),
      backgroundColor: Colors.amber[400],
      centerTitle: true,
      ),
      floatingActionButton: AddFloatingButton(),
      body: GridView.builder(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            mainAxisSpacing: 10.0,
            crossAxisSpacing: 10.0,
        ),
        shrinkWrap: true,
        padding: EdgeInsets.all(10.0),
        itemCount: items.length,
        itemBuilder: (context, index) {
          return ContactItem(item: items[index]);
        },
      ),
    );
  }
}

class ContactItem extends StatelessWidget {
  ContactItem({Key key, this.item}) : super(key: key);

  final Contact item;

  void removeItem() {

  }
  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        children: <Widget>[
          Icon(
            Icons.person,
            size: 78.0,
            color: Colors.grey[400],
          ),
          Text(item.name,
            maxLines: 1,
            overflow: TextOverflow.clip,
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 20.0,
              fontFamily: 'Cabin'
            ),
          ),
          Text(item.phone,
            style: TextStyle(
              fontSize: 15.0,
              fontFamily: 'Cabin',
              color: Colors.black54
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 8.0),
            child:  SizedBox(
              width: 95.0,
              height: 22.0,
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
                        Icons.delete_forever,
                        size: 12.6,
                      ),
                    ),
                    Text('Remove',
                      style: TextStyle(
                          fontFamily: 'Cabin',
                          fontSize: 14.0
                      ),
                    )
                  ],
                ),
                onPressed: removeItem,
              ),
            ),
          )
        ],
      ),
    );
  }
}

class AddFloatingButton extends StatefulWidget {
  AddFloatingButton({Key key}) : super(key: key);

  @override
  _AddFloatingButtonSate createState() => _AddFloatingButtonSate();
}

class _AddFloatingButtonSate extends State<AddFloatingButton> {

  bool showFab = true;
  var bottomCtrl;
  void isShowFab(bool show){
    setState(() {
      showFab = show;
    });
  }
  @override
  Widget build(BuildContext context) {
    return showFab?
      FloatingActionButton(
          child: Icon(
              Icons.person_add
          ),
          onPressed: () {
            this.isShowFab(false);
            bottomCtrl = showBottomSheet(context: context,
                builder: (context) => Card(
                  margin: EdgeInsets.all(12.0),
                  color: Colors.white,
                  elevation: 1.5,
                  child: Form(
                    child: ListView(
                      shrinkWrap: true,
                      children: <Widget>[
                        Container(
                          margin: EdgeInsets.only(right: 10.0, top: 8.0, bottom: 2.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: <Widget>[
                              Container(
                                margin: EdgeInsets.only(right: 8.0),
                                child: SizedBox(
                                  height: 24.0,
                                  width: 70.0,
                                  child: FlatButton(
                                    color: Colors.teal,
                                    child: Text('Save',
                                      style: TextStyle(
                                          fontFamily: 'Cabin',
                                          color: Colors.white
                                      ),
                                    ),
                                    shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(20.0)
                                    ),
                                    onPressed: (){
                                      this.bottomCtrl.close();
                                    },
                                  ),
                                ),
                              ),
                              SizedBox(
                                height: 24.0,
                                width: 70.0,
                                child: OutlineButton(
                                  child: Text('Close',
                                    style: TextStyle(
                                      fontFamily: 'Cabin',
                                      color: Colors.grey[500]
                                    ),
                                  ),
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(20.0)
                                  ),
                                  onPressed: (){
                                    this.bottomCtrl.close();
                                  },
                                ),
                              ),
                            ],
                          )
                        ),
                        Divider(
                          color: Colors.grey[400],
                        ),
                        Container(
                          margin: EdgeInsets.only(bottom: 12.0, left: 12.0, right: 12.0, top: 5.0),
                          child:  TextFormField(
                            maxLines: 1,
                            textInputAction: TextInputAction.next,
                            keyboardType: TextInputType.text,
                            textCapitalization: TextCapitalization.words,
                            cursorColor: Colors.amber[500],
                            cursorWidth: 1.2,
                            style: TextStyle(
                                fontFamily: 'Cabin',
                                fontSize: 18.0
                            ),
                            decoration: InputDecoration(
                                hintText: 'Name',
                                fillColor: Colors.grey[500],
                                contentPadding: EdgeInsets.fromLTRB(8.0, 2.0, 8.0, 2.0),
                                border: OutlineInputBorder(
                                    borderSide: BorderSide(color: Colors.grey[300]),
                                    borderRadius: BorderRadius.all(Radius.circular(6.0))
                                )
                            ),
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(bottom: 12.0, left: 12.0, right: 12.0),
                          child:  TextFormField(
                            maxLines: 1,
                            textInputAction: TextInputAction.done,
                            keyboardType: TextInputType.phone,
                            cursorColor: Colors.amber[300],
                            cursorWidth: 1.2,
                            style: TextStyle(
                                fontFamily: 'Cabin',
                                fontSize: 18.0
                            ),
                            decoration: InputDecoration(
                                hintText: 'Phone',
                                contentPadding: EdgeInsets.fromLTRB(8.0, 2.0, 8.0, 2.0),
                                border: OutlineInputBorder(
                                    borderSide: BorderSide(color: Colors.grey[300]),
                                    borderRadius: BorderRadius.all(Radius.circular(6.0))
                                )
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                )
            );
            bottomCtrl.closed.then((value) {
              this.isShowFab(true);
            });
           }
      ): Container();
  }
}