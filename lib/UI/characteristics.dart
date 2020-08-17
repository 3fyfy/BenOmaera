import 'package:ben_omera/Core/constants/app_contstant.dart';
import 'package:ben_omera/UI/widget/appbar.dart';
import 'package:flutter/material.dart';
class Characteristics extends StatefulWidget {
  @override
  _CharacteristicsState createState() => _CharacteristicsState();
}

class _CharacteristicsState extends State<Characteristics> {
  @override
  Widget build(BuildContext context) {
    double height=MediaQuery.of(context).size.height;
    double width=MediaQuery.of(context).size.width;
    double heightItem=height*.5;

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
    child: ListView(
    children: <Widget>[
    AppBarWidget("شخصيات مرموقة"),
    Container(
    height: height-kToolbarHeight- 56,
    margin: EdgeInsets.only(top: height*.05),
      padding: EdgeInsets.only(right: width*.05,left: width*.05),

      child: GridView.builder(
    itemCount: 15,
    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2,
    childAspectRatio: (width/2)/heightItem,mainAxisSpacing: height*.05,crossAxisSpacing: width*.08) ,
    itemBuilder:(context, index) {
      return InkWell(
        onTap: (){
          Navigator.of(context).pushNamed(RoutePaths.CharacterDetails);

        },
        child: Container(
          height: heightItem,
          width: width/2,
          padding: EdgeInsets.only(top:8,left: 8,right: 8,bottom: 2),
          decoration: BoxDecoration(
            gradient: LinearGradient(
                colors: [Color(0xff340082), Color(0xfff7b09a)],
                begin: const FractionalOffset(0.0, 0.2),
                end: const FractionalOffset(0.0, 1.3),
                stops: [0.0, 0.8],
                tileMode: TileMode.clamp
            ),

          ),
child: Column(
  children: <Widget>[
    Image.asset("assets/ibn.jpg"),
           // أبو علي الحسين بن عبد الله بن الحسن بن علي بن سينا
        Text(" ابن سينا",style: TextStyle(color: Colors.white,fontSize: 20,fontWeight: FontWeight.w700),maxLines: 1,overflow: TextOverflow.ellipsis,),
    Text(" عالم وطبيب مسلم، اشتهر بالطب والفلسفة واشتغل بهما. ولد في قرية أفشنة بالقرب من بخارى (في أوزبكستان حالياً) من أب من مدينة بلخ (في أفغانستان حالياً)  وأم قروية. ولد سنة 370 هـ (980م) وتوفي في همدان (في إيران حاليا) سنة 427 هـ (1037م). عُرف باسم الشيخ الرئيس وسماه الغربيون بأمير الأطباء وأبو الطب الحديث في العصور الوسطى. وقد ألّف 200 كتابا في مواضيع مختلفة، العديد منها يركّز على الفلسفة والطب",style: TextStyle(color: Colors.white,fontSize: 15,),overflow: TextOverflow.ellipsis,softWrap: true,),

  ],
),
        ),
      );
    }
      ),

    )
        ]
    )
    )
        ),
            drawer: Drawer(),

    );
  }
}
