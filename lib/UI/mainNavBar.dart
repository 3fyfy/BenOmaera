import 'package:ben_omera/UI/home.dart';
import 'package:ben_omera/UI/search.dart';
import 'package:ben_omera/UI/weather.dart';
import 'package:flutter/material.dart';

class Mainnavbar extends StatefulWidget {
  @override
  _MainnavbarState createState() => _MainnavbarState();
}

class _MainnavbarState extends State<Mainnavbar> {


  final scaffoldKey=GlobalKey<ScaffoldState>();

  static var name='';



  int _selectedIndex=1;
  Widget body= Home();
  List <Widget> pages=[
    Search(),
    Home(),
    WeatherPage()
  ];



  void _onItemTapped(int index) async {
    setState(() {

        _selectedIndex = index;
        body= pages[_selectedIndex];


    });
  }
    Widget build(BuildContext context) {
      return Directionality(

        textDirection: TextDirection.rtl,
        child: Scaffold(

            key: scaffoldKey,

            body: body,
            bottomNavigationBar: BottomNavigationBar(
              showSelectedLabels: false,
              showUnselectedLabels: false,
              selectedIconTheme: IconThemeData(color: Colors.black54),


              items: [

                BottomNavigationBarItem(
                    icon: Icon(Icons.search),
                    title: Padding(padding: EdgeInsets.only(bottom: 10))
                ),

                BottomNavigationBarItem(
                    icon: Icon(Icons.home),
                    title: Padding(padding: EdgeInsets.only(bottom: 10))
                ),
                BottomNavigationBarItem(
                    icon: Icon(Icons.wb_sunny),
                    title: Padding(padding: EdgeInsets.only(bottom: 10))
                ),
              ],
              backgroundColor: Theme.of(context).accentColor,
              unselectedItemColor: Colors.white,
              selectedItemColor: Colors.white,

              currentIndex: _selectedIndex,
              onTap: _onItemTapped,
              type: BottomNavigationBarType.fixed,
            )
        ),
      );
    }
  }
