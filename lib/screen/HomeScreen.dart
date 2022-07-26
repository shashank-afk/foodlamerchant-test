import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => Scaffold(
      extendBodyBehindAppBar: true,
      drawer: Drawer(

      ),
    body:

    Stack(
      children: [

       Align(
        alignment: Alignment(-0.95,-0.87),
        child: Builder(
          builder: (context) {
            return IconButton(
              tooltip: MaterialLocalizations.of(context).openAppDrawerTooltip,
              iconSize: 40,
              onPressed: (){
                Scaffold.of(context).openDrawer();
              },
              icon: new Icon(Icons.menu_outlined),
              color: Color.fromRGBO(114, 204,80,1),
            );
          }
        ),
      ),


    Align(
      alignment: Alignment(0.95,-0.87),
      child: Builder(
          builder: (context) {
            return IconButton(
              tooltip: MaterialLocalizations.of(context).openAppDrawerTooltip,
              iconSize: 40,
              onPressed: (){
                Scaffold.of(context).openDrawer();
              },
              icon: new Icon(Icons.settings),
              color: Color.fromRGBO(114, 204,80,1),
            );
          }
      ),
    ),
  ],
  ),

  );
  }

