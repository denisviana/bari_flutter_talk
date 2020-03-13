

import 'package:flutter/material.dart';

class PresentationPage1 extends StatefulWidget {

  final String title;
  final List<Widget> images;

  PresentationPage1({
    @required this.title, 
    @required this.images});

  @override
  _PresentationPage1State createState() => _PresentationPage1State(title,images);
}

class _PresentationPage1State extends State<PresentationPage1> with AutomaticKeepAliveClientMixin{

  _PresentationPage1State(this._title, this._images);


  String _title;
  var _images = List<Widget>();

  @override
  void initState() {
    super.initState();

  }


  @override
  Widget build(BuildContext context) {
    super.build(context);

    return Container(
      child: Column(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[

        Text(_title, style: TextStyle(fontSize: 40, color: Colors.black), textAlign: TextAlign.center),
        SizedBox(height: 50.0,),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: _images
        )

        ],
      ),
    );
  }

  @override
  bool get wantKeepAlive => true;
}