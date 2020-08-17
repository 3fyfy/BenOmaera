import 'package:flutter/material.dart';
import 'package:ben_omera/Core/constants/app_contstant.dart';

class DrawerPage extends StatefulWidget {
  @override
  _DrawerPageState createState() => new _DrawerPageState();
}

class _DrawerPageState extends State<DrawerPage> {

  Widget _buildItem(String name,String root){
    double width=MediaQuery.of(context).size.width;


    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.only(top:10.0,bottom: 10,right: 40),
          child: InkWell(child: Text(name,style: TextStyle(fontSize: 15,color:Colors.white )),
            onTap: (){
              Navigator.of(context).pushNamed(root);
            },
          ),
        ),
        Padding(
          padding:  EdgeInsets.only(right: width*.05,left: width*.05),
          child: Divider(color: Color(0xff31050f),height: 2,),
        )
      ],
    );
  }


  @override
  Widget build(BuildContext context) {
    double height=MediaQuery.of(context).size.height;
    double width=MediaQuery.of(context).size.width;
    return  Container(
       width: width*.7,

    child: Drawer(
        child: Container(

            color: Color(0xff62209c),
        child: Column(
        children: <Widget>[
            Padding(
              padding: const EdgeInsets.only(top:30.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.only(top:10.0,bottom: 10,right: 40),
                    child: InkWell(child: Text("الصفحة الرئيسية",style: TextStyle(fontSize: 15,color:Colors.white )),
                      onTap: (){
                        Navigator.of(context).pushNamed(RoutePaths.Mainnavbar);
                      },
                    ),
                  ),
                  Padding(
                    padding:  EdgeInsets.only(right: width*.05,left: width*.05),
                    child: Divider(color: Color(0xff31050f),height: 2,),
                  )
                ],
              ),
            ),
          _buildItem("شخصيات مرموقة",RoutePaths.Characteristics),
          _buildItem("الاخبار",RoutePaths.News),
          _buildItem("نجم بن عميرة وخصائصه",RoutePaths.StarsPage),
          _buildItem("رادار الامطار",""),
          _buildItem("اسلاميات",RoutePaths.Islamic),
        ],
        ),

        ),
      ),
    );
  }
}
