 import 'dart:ui';

import 'package:ben_omera/Core/constants/app_contstant.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:hijri/hijri_calendar.dart';
import 'package:intl/intl.dart';
import 'dart:ui' as ui;
import 'package:ben_omera/UI/widget/drawerPage.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {


  List<String>monthHigriArabic=["مُحَرَّم"," صَفَر","ربيع الأول"," ربيع الثاني"," جُمادى الأولى","جُمادى الثانية","رجب","شعبان"," رمضان","شوال"," ذو القعدة"," ذو الحجة"];
  List<String>dayArabic=["الاثنين ","الثلاثاء" ,"الأربعاء ", "الخميس " ,"الجمعة ","السبت ","الأحد "];
  List<String>monthArabic=[ "يناير"," فبراير"," مارس", "ابريل", "مايو", "يونيو", "يوليو"," أغسطس", "سبتمبر"," أكتوبر"," نوفمبر", "ديسمبر"];
  var _today = new HijriCalendar.now();

  DateFormat dateFormat = DateFormat("yyyy/MM/dd");

  Widget _buildImageRow(String image, String icon, String title,String root){
    double widthsize=MediaQuery.of(context).size.width;

    return   InkWell(
      onTap: (){
        Navigator.of(context).pushNamed(root);
      },
      child: Container(
          height: 90,
          width: widthsize,
          margin:EdgeInsets.only(top: 10,bottom: 10) ,
          padding: EdgeInsets.only(top: 10,bottom: 10,right: widthsize*.02,left: widthsize*.02),
          decoration: BoxDecoration(
              image: DecorationImage(image: AssetImage(image),fit: BoxFit.cover)

          ),
          child:Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Image.asset(icon,height: 30,color: Colors.indigoAccent,),
              Text(title,style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),)
            ],
          )
      ),
    );
  }
  Widget _buildDoubleImageRow(String image, String icon, String title,String root){
    double widthsize=(MediaQuery.of(context).size.width/2);

    return  InkWell(
      onTap: (){
        Navigator.of(context).pushNamed(root);
      },
      child: Container(
          height: 90,
          width: widthsize-(widthsize*2*.1),
          margin:EdgeInsets.only(top: 10,bottom: 10,) ,
          padding: EdgeInsets.only(top: 10,bottom: 10,right: widthsize*.02,left: widthsize*.02),
          decoration: BoxDecoration(
              image: DecorationImage(image: AssetImage(image),fit: BoxFit.cover)

          ),
          child:Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Image.asset(icon,height: 30,color: Colors.indigoAccent,),
              Text(title,style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),)
            ],
          )
      ),
    );
  }

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
       textDirection:ui.TextDirection.rtl,
          child: ListView(
            padding: EdgeInsets.only(left: width*.05,right: width*.05),
            children: <Widget>[
              AppBar(
                backgroundColor: Colors.transparent,
                elevation: 0,
              ),
              Container(
                height: 70,
                width: width,
                padding: EdgeInsets.only(top: 10,bottom: 10),
                child: Center(
                  child: Image(image: AssetImage('assets/logo.png')),
                ),
              ),
              Expanded(
                child: Container(
                //  width: width-width*.1,
                    margin:EdgeInsets.only(top: 10,bottom: 10,) ,
                    padding: EdgeInsets.only(top: 10,bottom: 10,right: width*.02,left: width*.02),
                    decoration: BoxDecoration(
                      image: DecorationImage(image: AssetImage("assets/Date_Background.png"),fit: BoxFit.cover)

                  ),
                  child: Row(

                    children: <Widget>[

                      Expanded(
                        child: Column(

                          children: <Widget>[
                            Text("",style: TextStyle(color: Colors.white),),

                            Text("${monthHigriArabic[_today.hMonth-1]}",style: TextStyle(color: Colors.white),),
                            Text("${_today.toFormat("mm / dd / yyyy")} هجري",style: TextStyle(color: Colors.white),maxLines: 1,),
                          ],
                        ),
                      ),
                      Expanded(
                        child: Column(

                        children: <Widget>[

                            Text("${dayArabic[DateTime.now().weekday-1]}",style: TextStyle(color: Colors.white),),

                          ],
                        ),
                      ),
                      Expanded(
                        flex: 2,
                        child: Column(

                        children: <Widget>[
                            Text("",style: TextStyle(color: Colors.white),),
                            Text("${monthArabic[DateTime.now().month]}",style: TextStyle(color: Colors.white),),
                            Text("${dateFormat.format(DateTime.now())} ميلادي",style: TextStyle(color: Colors.white),),
                          ],
                        ),
                      ),

                    ],
                  )
                ),
              ),
              _buildImageRow("assets/Home_secondBtn.png","assets/redsun.png","نجم بن عميرة وخصائصه",RoutePaths.StarsPage),
              _buildImageRow("assets/Home_ConvertDate.png","assets/calender.png","تحويل التاريخ الهجري والميلادي",RoutePaths.ConvertDate),
              Container(
                width: width,
                child: Row(
mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    _buildDoubleImageRow("assets/Home_Radar.png","assets/radar.png","رادار الامطار",""),
                    _buildDoubleImageRow("assets/Home_Mosq.png","assets/mosq.png","اسلاميات",RoutePaths.Islamic),
                  ],
                ),
              ),


            ],
          ),
        ),
      ),
      drawer: DrawerPage(),
    );
  }
}
