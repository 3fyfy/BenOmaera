
import 'package:ben_omera/Core/viewmodels/widgets/prayer_model.dart';
import 'package:ben_omera/UI/base_view.dart';
import 'package:ben_omera/UI/qibla/qiblah_compass.dart';
import 'package:ben_omera/UI/widget/appbar.dart';
import 'package:ben_omera/UI/widget/tempScreen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:geolocator/geolocator.dart';




class Islamic extends StatefulWidget {
  @override
  _IslamicState createState() => _IslamicState();
}

class _IslamicState extends State<Islamic>{


  Widget _buildPrayItem(String title,String time){

time=time.substring(0,5);
print(time);
    return  Padding(
      padding: const EdgeInsets.only(top:8.0,bottom: 8),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Text(title,style: TextStyle(color: Colors.white,fontSize: 20),textAlign: TextAlign.center,),
          Text("$time",style: TextStyle(color: Colors.white,fontSize: 20),textAlign: TextAlign.center,),
        ],
      ),
    );
  }
  @override
  Widget build(BuildContext context) {
    double height=MediaQuery.of(context).size.height;
    double width=MediaQuery.of(context).size.width;
    return BaseView<PrayerModel>(
        onModelReady: (model) async{
     Position position= await Geolocator().getCurrentPosition().then((value){ return value;});
      return model.getPrayerTime(position.latitude,position.longitude,DateTime.now().month,DateTime.now().year);},
    builder: (context, model, child) => (model.prayer==null)?Container(
        width: width,
        height:height,
        decoration: BoxDecoration(
          //color:Theme.of(context).accentColor,
            image: DecorationImage(image: AssetImage("assets/space.jpg"),fit: BoxFit.cover)

        ),    child: Center(child: CircularProgressIndicator())):
    Scaffold(
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
    AppBarWidget("اسلاميات"),

    StandardScreen(
    child:  ListView(
    padding: EdgeInsets.only(left: width*.05,right: width*.05,top: height*.05,bottom: height*.05),
    children: <Widget>[

      Container(
        height: height*.3,
        child:QiblahCompass()
      ),
      Text("مواقيت الصلاة",style: TextStyle(color: Colors.white,fontSize: 20),textAlign: TextAlign.center,),
      Padding(
        padding: const EdgeInsets.only(top:20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            _buildPrayItem("الفجر","${model.prayer.data[DateTime.now().day-1].timings.fajr}"),
            _buildPrayItem("الظهر","${model.prayer.data[DateTime.now().day-1].timings.dhuhr}"),
            _buildPrayItem("العصر","${model.prayer.data[DateTime.now().day-1].timings.asr}"),
            _buildPrayItem("المغرب","${model.prayer.data[DateTime.now().day-1].timings.maghrib}"),
            _buildPrayItem("العشاء","${model.prayer.data[DateTime.now().day-1].timings.isha}"),

          ],
        ),
      )
    ]
    )
    )
]
    )
    )
        )
    )
    );
  }

}

