import 'package:flutter/material.dart';

class StandardScreen extends StatefulWidget {
  final Widget child;

  StandardScreen({this.child});

  @override
  _StandardScreenState createState() => _StandardScreenState();
}

class _StandardScreenState extends State<StandardScreen> {

  @override
  Widget build(BuildContext context) {
    double height=MediaQuery.of(context).size.height;
    double width=MediaQuery.of(context).size.width;
    double heightItem=height*.5;

    return     Container(
        height: height-kToolbarHeight-56-height*.05,
        margin: EdgeInsets.only(top: height*.05),
    decoration: BoxDecoration(
    gradient: LinearGradient(
    colors: [Color(0xff340082), Color(0xfff7b09a)],
    begin: const FractionalOffset(0.0, 0.2),
    end: const FractionalOffset(0.0, 1.3),
    stops: [0.0, 0.8],
    tileMode: TileMode.clamp
    ),
    ),
    child:widget.child


    );
  }
}
