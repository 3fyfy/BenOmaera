import 'package:ben_omera/UI/widget/appbar.dart';
import 'package:ben_omera/UI/widget/tempScreen.dart';
import 'package:flutter/material.dart';
class CharacterDetails extends StatefulWidget {
  @override
  _CharacterDetailsState createState() => _CharacterDetailsState();
}

class _CharacterDetailsState extends State<CharacterDetails> {
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
                  AppBarWidget(" ابن سينا"),

                  StandardScreen(
                    child:  ListView(
                      padding: EdgeInsets.only(left: width*.05,right: width*.05,top: height*.05,bottom: height*.05),
                      children: <Widget>[

                        Image.asset("assets/ibn.jpg",height: height*.25,fit: BoxFit.fill,),
                        SizedBox(height: height*.05,),
                        Text ("أبو علي الحسين بن عبد الله بن الحسن بن علي بن سينا البَلْخيّ ثم البُخاريّ المعروف بابن سينا، عالم وطبيب مسلم، اشتهر بالطب والفلسفة واشتغل بهما. ولد في قرية أفشنة بالقرب من بخارى (في أوزبكستان حالياً) من أب من مدينة بلخ (في أفغانستان حالياً)  وأم قروية. ولد سنة 370 هـ (980م) وتوفي في همدان (في إيران حاليا) سنة 427 هـ (1037م). عُرف باسم الشيخ الرئيس وسماه الغربيون بأمير الأطباء وأبو الطب الحديث في العصور الوسطى. وقد ألّف 200 كتابا في مواضيع مختلفة، العديد منها يركّز على الفلسفة والطب. ويعد ابن سينا من أول من كتب عن الطبّ في العالم ولقد اتبع نهج أو أسلوب أبقراط وجالينوس. وأشهر أعماله كتاب القانون في الطب الذي ظل لسبعة قرون متوالية المرجع الرئيسي في علم الطب، وبقي كتابه (القانون في الطب) العمدة في تعليم هذا الفنِّ حتى أواسط القرن السابع عشر في جامعات أوروبا  ويُعد ابن سينا أوَّل من وصف التهاب السَّحايا الأوَّليِّ وصفًا صحيحًا، ووصف أسباب اليرقان ، ووصف أعراض حصى المثانة، وانتبه إلى أثر المعالجة النفسانية في الشفاء . وكتاب الشفاء.",style: TextStyle(color: Colors.white,fontSize: 15),)
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
