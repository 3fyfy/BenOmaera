import 'package:ben_omera/UI/widget/appbar.dart';
import 'package:ben_omera/UI/widget/tempScreen.dart';
import 'package:flutter/material.dart';

class NewsDetails extends StatelessWidget {
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
                  AppBarWidget(" الاخبارا"),

                  StandardScreen(
                    child:  ListView(
                      padding: EdgeInsets.only(left: width*.05,right: width*.05,top: height*.05,bottom: height*.05),
                      children: <Widget>[

                        Image.asset("assets/ibn.jpg",height: height*.25,fit: BoxFit.fill,),
                        SizedBox(height: height*.02,),
                        Text("12/12/2020",style:TextStyle(color: Colors.white60,fontSize: 10)),
                        SizedBox(height: height*.03,),
                        Text ("رفعت الرئاسة العامة لشؤون المسجد الحرام والمسجد النبوي، الثلاثاء، الجزء السفلي من كسوة الكعبة المشرفة بمقدار 3 أمتار تقريبا، وغطت الجزء المرفوع بإزار من القماش القطني الأبيض بعرض مترين تقريبا من الجهات الأربع، وذلك كما جرت العادة السنوية وحسب الخطة المعتمدة لموسم الحج.",style: TextStyle(color: Colors.white,fontSize: 15),)
                      ],

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
