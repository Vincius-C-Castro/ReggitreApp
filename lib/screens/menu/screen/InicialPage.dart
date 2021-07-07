
import 'package:ReggitreApp/screens/menu/Widgets/AnimatedBottomNavBar.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:intl/intl.dart';

import 'package:table_calendar/table_calendar.dart';

import 'DespesasResumo.dart';
import 'HomePage.dart';
import 'ReceitasResumo.dart';

class InicialPage extends StatefulWidget {

  final List<BarItem> barItems = [
    
    BarItem(
      text: "Despesas",
      iconData: Icons.remove_circle_outline,
      color: Colors.pinkAccent,
    ),
    BarItem(
      text: "Movimentações",
      iconData:  Icons.home,
      color: Colors.green,
    ),
    
    BarItem(
      text: "Receitas",
      iconData: Icons.add_circle_outline,
      color: Colors.teal,
    ),
    /*BarItem(
      text: "Search",
      iconData: Icons.search,
      color: Colors.yellow.shade900,
    ),
    */
  ];

  @override
  _InicialPageState createState() => _InicialPageState();
}

class _InicialPageState extends State<InicialPage> {
  
  int selectedBarIndex = 1;
  
  
  

  @override
  Widget build(BuildContext context) {

    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;

    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
    //systemNavigationBarColor: Colors.lightBlue[700], // navigation bar color
    //statusBarColor: Colors.lightBlue[700],
    systemNavigationBarIconBrightness: Brightness.dark,
    systemNavigationBarColor: Colors.white,
    statusBarIconBrightness: Brightness.light // status bar color
  ));

    SystemChrome.setPreferredOrientations(
        [DeviceOrientation.portraitUp, DeviceOrientation.portraitDown]);
    

    List<Widget> telas =[
      
      DespesasResumo(),
      HomePage(),
      ReceitasResumo()   
    ];

    //_allMov();
    //print("\nMes atual: " + DateTime.now().month.toString());
    return Scaffold(
      body: telas[selectedBarIndex],
      bottomNavigationBar: AnimatedBottomBar(
        barItems: widget.barItems,
          animationDuration: const Duration(milliseconds: 150),
          barStyle: BarStyle(
            fontSize: width * 0.045,
            iconSize: width * 0.07
          ),
          onBarTap: (index){
            setState(() {
              selectedBarIndex = index;
            });
          },
      ),

    );
  }
}
