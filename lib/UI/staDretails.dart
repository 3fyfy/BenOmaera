import 'dart:ui';

import 'package:ben_omera/UI/widget/appbar.dart';
import 'package:ben_omera/UI/widget/tempScreen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
class StarDetails extends StatefulWidget {
  @override
  _StarDetailsState createState() => _StarDetailsState();
}

class _StarDetailsState extends State<StarDetails> {
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
                  AppBarWidget("نجم السماك"),

                  StandardScreen(
                    child:  ListView(
                      padding: EdgeInsets.only(left: width*.05,right: width*.05,top: height*.05,bottom: height*.05),
                    children: <Widget>[

                      Text("ينتمي السِّماك الأعزل وهو نجما ثنائيا إلى التصنيف النجمي من فئة الطيف B وهي تتغير بين B1 حتى B4 ويوجد النجم الأكثر تألقًا حاليًا في نهاية الحالة المستقرة من عمره باعتباره نجما من نجوم النسق الأساسي . ويعتبر النجمان من ضمن أشد نجوم سماء الأرض تألقا ويتميزان بدرجة جرارة عالية لسطح كل منهما. ونظرا لارتفاع درجة حرارة السطح هذه فإن أغلب ضوء السِّماك الأعزل يُشع في نطاق الاشعة فوق البنفسجية.وتبلغ درجة حرارة النجم الأشد تألقًا منهما 22.400 كلفن (بالمقارنة ب 5780 كلفن لدرجة حرارة سطح الشمس كما يبلغ ضياؤه أشد 13.500 مرة من الضياء الشمسي.ويبلغ نصف قطره 8و7 مرات من نصف قطر الشمس وهذا يمثل نحو 30 % من المسافة بين النجمين. كما تبلغ كتلة النجم الأكثر تألقًا أكبر 11 مرة من كتلة شمسية، وهي كتلة تكفي لأن ينفجر النجم عند نهاية عمره فيما بعد في صورة مستعر أعظم.وأما النجم الثاني التابع الغير معروف كثيرًا فتألقه أقل وتبلغ درجة حرارة سطحه 18.500 كلفن، وبالنسبة لشدة ضيائه فهي أشد من ضياء الشمس 1.700 مرة، ونصف قطره 4 أضعاف نصف قطر الشمس وكتلته 7 أضعاع الكتلة الشمسية.أحيانا يختفي السِّماك الأعزل خلف القمر ونادرا ما يختفي خلف أحد كوكب المجموعة الشمسية وكان أخر خسوف للسِّماك الأعزل وراء أحد الكواكب في 10 نوفمبر 1783 حيث غطاه كوكب الزهرة وحجبه عنا، وأما الخسوف القادم فهو متوقع في 2 سبتمبر 2197 وسيكون كوكب الزهرة أيضا هو كوكب الخسوف.",style: TextStyle(color: Colors.white,fontSize: 15),)
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
