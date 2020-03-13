
import 'package:flutter/material.dart';

class PresentationPage extends StatefulWidget {

  String title;
  Widget primaryImage;
  Widget secondaryImage;
  List<String> topics;

  PresentationPage({
    @required this.title, 
    @required this.primaryImage, 
    @required this.secondaryImage, 
    @required this.topics});

  @override
  _PresentationPageState createState() => _PresentationPageState(topics, primaryImage, secondaryImage, title);
}

class _PresentationPageState extends State<PresentationPage> with AutomaticKeepAliveClientMixin{

  _PresentationPageState(this._topics, this._primaryImage, this._secondaryImage, this._title);


  String _title;
  Widget _primaryImage;
  Widget _secondaryImage;
  var _topicsWidgets = List<Widget>();
  var _topics = List<String>();

  @override
  void initState() {
    super.initState();

    _topics.forEach((element) => {
      _topicsWidgets.add(
        Text(
          element,
          textAlign: TextAlign.start,
          style: TextStyle(fontSize: 25.0, color: Colors.black87,fontFamily: 'BalooChettan')
        )
      )
    });

  }


  @override
  Widget build(BuildContext context) {
    super.build(context);

    return Container(
      padding: EdgeInsets.only(top: 40.0),
      child: Row(
        mainAxisSize: MainAxisSize.max,
        children: <Widget>[

          Expanded(
            child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[

              _secondaryImage != null ?
              SizedBox(
                height: 80.0,
                width: 80.0,
                child: _secondaryImage,
              ) : Container(),

              SizedBox(
                height: 50.0,
              ),

              Text(_title, 
                style: TextStyle(color: Colors.black, fontWeight: FontWeight.w600, fontSize: 40.0, fontFamily: 'BalooChettan'),
                ),

              SizedBox(
                height: 30.0,
              ),

              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: _topicsWidgets,
                )

            ],
          ),
          ),

          SizedBox(width: 50.0),

          Expanded(
            child: Container(
              padding: EdgeInsets.all(16.0),
              constraints: BoxConstraints(
                maxWidth: MediaQuery.of(context).size.width/3,
                maxHeight: MediaQuery.of(context).size.height
                ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[

                    _primaryImage ?? Container()

                  ],
                ),
            )
          )

        ],
      ),
    );
  }

  @override
  bool get wantKeepAlive => true;
}