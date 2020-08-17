import 'package:ben_omera/Core/constants/app_contstant.dart';
import 'package:ben_omera/UI/widget/appbar.dart';
import 'package:ben_omera/UI/widget/tempScreen.dart';
import 'package:flutter/material.dart';

class News extends StatelessWidget {
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
    AppBarWidget("الاخبار"),

    StandardScreen(
    child:  ListView.builder(
    padding: EdgeInsets.only(left: width*.05,right: width*.05,top: height*.05,bottom: height*.05),
      itemCount: 10,
      itemBuilder: (context, index) {
      return InkWell(
        onTap: (){
          Navigator.of(context).pushNamed(RoutePaths.NewsDetails);

        },
        child: ListTile(
          leading:    Image.asset("assets/ibn.jpg"),
          title: Text("رفع كسوة الكعبة استعدادا لموسم الحج",style:TextStyle(color: Colors.white),maxLines: 1,overflow: TextOverflow.ellipsis,),
          subtitle: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text("رفعت الرئاسة العامة لشؤون المسجد الحرام والمسجد النبوي، الثلاثاء، الجزء السفلي من كسوة الكعبة المشرفة بمقدار 3 أمتار تقريبا، وغطت الجزء المرفوع بإزار من القماش القطني الأبيض بعرض مترين تقريبا من الجهات الأربع، وذلك كما جرت العادة السنوية وحسب الخطة المعتمدة لموسم الحج.",style:TextStyle(color: Colors.white60,fontSize: 10),maxLines: 2,overflow: TextOverflow.ellipsis,),
              Text("12/12/2020",style:TextStyle(fontSize: 10))
            ],
          ),

        ),
      );
      },
    )
    )
    ]
    )
    )
        )
    );
  }
}
