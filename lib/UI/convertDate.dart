import 'package:ben_omera/UI/widget/appbar.dart';
import 'package:ben_omera/UI/widget/tempScreen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ConvertDate extends StatefulWidget {
  @override
  _ConvertDateState createState() => _ConvertDateState();
}

class _ConvertDateState extends State<ConvertDate> {

  TextEditingController day=TextEditingController();
  TextEditingController month=TextEditingController();
  TextEditingController year=TextEditingController();

  Widget _buildInput( {TextEditingController controller,TextInputType type,String hintText}){
    return  TextFormField(
      controller:controller ,
      keyboardType:type,
      decoration:InputDecoration(
        hintText: hintText,
        fillColor: Colors.white,
        focusColor:Colors.white ,
        filled: true,
        hintStyle: TextStyle(fontSize: 18),

        focusedBorder: InputBorder.none,
        border: new OutlineInputBorder(
          borderRadius: const BorderRadius.all(
            const Radius.circular(10.0),
          ),
        ),      ),
      cursorColor: Theme.of(context).accentColor,
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
              textDirection:TextDirection.rtl,
              child: ListView(
                children: <Widget>[
                 AppBarWidget("تحويل التاريخ"),
              StandardScreen(
                   child: ListView(
                      padding: EdgeInsets.only(left: width*.05,right: width*.05,top: height*.05,bottom: height*.05),
                      children: <Widget>[
                        Text("تحويل التاريخ الهجري والميلادي",style: TextStyle(color: Colors.white,fontSize: 20,fontWeight: FontWeight.bold),textAlign: TextAlign.center,),
                        SizedBox(height: height*.1,),
                        Text("التاريخ",style: TextStyle(color: Colors.white,fontSize: 15),textAlign: TextAlign.justify,),
                        Padding(
                          padding: const EdgeInsets.only(top:10.0,bottom: 10),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: <Widget>[
                              Container(
                                  height:50,
                                  width: width*.2,
                                  child:_buildInput(hintText: "يوم",controller: day,type: TextInputType.number)),
                              Container(
                                  height:50,
                                  width: width*.2,
                                  child:_buildInput(hintText: "شهر",controller: month,type: TextInputType.number)),
                              Container(
                                  height:50,
                                  width: width*.2,
                                  child:_buildInput(hintText: "سنة",controller: year,type: TextInputType.number)),

                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top:20.0,bottom: 10),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: <Widget>[
                              Container(
                                height:50,
                                width: width*.4,
                                color: Theme.of(context).accentColor,
                                alignment: Alignment.center,
                                child: Text("ميلادي الى هجري",style: TextStyle(color: Colors.white,fontSize: 15,fontWeight: FontWeight.bold),textAlign: TextAlign.center,),
                              ),
                              Container(
                                height:50,
                                width: width*.4,
                                color: Theme.of(context).accentColor,
                                alignment: Alignment.center,
                                child: Text("هجري الى ميلادي",style: TextStyle(color: Colors.white,fontSize: 15,fontWeight: FontWeight.bold),textAlign: TextAlign.center,),
                              ),

                            ],

                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top:10.0,bottom: 10),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: <Widget>[
                              Container(
                                  height:50,
                                  width: width*.2,
                                  decoration: BoxDecoration(
                                      color: Colors.white,
                                      borderRadius: BorderRadius.circular(10),
                                      border: Border.all(color: Colors.black54)
                                  ),
                                  child:Center(child: Text( "يوم",style: TextStyle(color: Colors.grey,fontSize:18),))),
                              Container(
                                  height:50,
                                  width: width*.2,
                                  decoration: BoxDecoration(
                                      color: Colors.white,
                                      borderRadius: BorderRadius.circular(10),
                                      border: Border.all(color: Colors.black54)
                                  ),
                                  child:Center(child: Text( "شهر",style: TextStyle(color: Colors.grey,fontSize:18),))),
                              Container(
                                  height:50,
                                  width: width*.2,

                                  decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(10),
                                      border: Border.all(color: Colors.black54)
                                  ),
                                  child:Center(child: Text( "سنة",style: TextStyle(color: Colors.grey,fontSize:18),))),

                            ],
                          ),
                        ),
                        Text("تفريغ الخانات",style: TextStyle(color: Colors.deepPurple,fontSize: 20,fontWeight:FontWeight.w300),textAlign: TextAlign.justify,),

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
