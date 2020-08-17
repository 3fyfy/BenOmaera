import 'package:flutter/material.dart';
class AppBarWidget extends StatelessWidget {
  final String title;

  AppBarWidget(this.title);

  @override
  Widget build(BuildContext context) {
    return  AppBar(
      backgroundColor: Colors.transparent,
      elevation: 0,
      title: Text(title),
      centerTitle: true,
      leading:  IconButton(icon: Icon(Icons.arrow_back,color: Colors.white,textDirection: TextDirection.ltr,), onPressed: (){
        Navigator.of(context).pop();
      }),

    );
  }
}
