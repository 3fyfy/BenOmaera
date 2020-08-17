import 'package:ben_omera/Core/constants/app_contstant.dart';
import 'package:ben_omera/UI/widget/appbar.dart';
import 'package:flutter/material.dart';

class StarsPage extends StatefulWidget {
  @override
  _StarsPageState createState() => _StarsPageState();
}

class _StarsPageState extends State<StarsPage> {
  @override
  Widget build(BuildContext context) {
    double height=MediaQuery.of(context).size.height;
    double width=MediaQuery.of(context).size.width;
    return Scaffold(

        body: Container(
        width: width,
        height:height,
        decoration: BoxDecoration(
        //color:Theme.of(context).accentColor,
        image: DecorationImage(image: AssetImage("assets/space.jpg"),fit: BoxFit.cover)

    ),
    child:   Directionality(
    textDirection:TextDirection.rtl,
    child: Column(
      children: <Widget>[
        AppBarWidget("نجم بن عميرة وخصائصه"),
        Container(
          height: height-kToolbarHeight-32,
          child: ListView.builder(
          padding: EdgeInsets.only(left: width*.05,right: width*.05),
            itemCount: 10,
            itemBuilder: (context, index) => InkWell(
              onTap: (){
                Navigator.of(context).pushNamed(RoutePaths.StarDetails);
              },
              child: Container(
                  height: 90,
                  width: width,
                  margin:EdgeInsets.only(top: 10,bottom: 10) ,
                  padding: EdgeInsets.only(top: 10,bottom: 10,right: width*.02,left: width*.02),
                  color: Theme.of(context).accentColor,
                  child:Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Text("نجم السماك",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),),
                      Text("لمدة 13 يوم",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),)
                    ],
                  )
              ),
            ),

          ),
        ),
      ],
    )

    )
        ),

      drawer: Drawer(),
    );
  }
}
