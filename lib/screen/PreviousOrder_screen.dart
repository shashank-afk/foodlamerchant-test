import 'package:flutter/material.dart';
import 'EditMenu_screen.dart';
import 'HomeScreen.dart';
import 'ManageTeam_screen.dart';
class PreviousOrders extends StatefulWidget {
  const PreviousOrders({Key? key}) : super(key: key);

  @override
  State<PreviousOrders> createState() => _PreviousOrdersState();
}

class _PreviousOrdersState extends State<PreviousOrders> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,

      drawer:
      Drawer(
        child: Material(
          child: ListView(
            children: [
              const SizedBox(height: 24),
              Divider(color: Colors.grey,),
              const SizedBox(height: 24),

              const SizedBox(height: 16,),
              Sidebar(
                text:'Active Orders',
                icon: Icons.fastfood_outlined,
                onClicked: () => selectedItem(context,0),
              ),
              const SizedBox(height: 16,),
              Sidebar(
                text:'Edit Menu',
                icon: Icons.auto_stories_outlined,
                onClicked: () => selectedItem(context,1),
              ),
              const SizedBox(height: 16,),
              Sidebar(
                text:'Previous Orders',
                icon: Icons.watch_later_outlined,
                onClicked: () => selectedItem(context,2),
              ),
              const SizedBox(height: 16,),
              Sidebar(
                text:'Manage Team',
                icon: Icons.group,
                onClicked: () => selectedItem(context,3),
              ),
            ],
          ),
        ),

      ),

      body:

      Stack(
        children: [
          //MENU ICON
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

          //GEAR ICON
          Align(
            alignment: Alignment(0.95,-0.87),
            child: Builder(
                builder: (context) {
                  return IconButton(
                    tooltip: MaterialLocalizations.of(context).openAppDrawerTooltip,
                    iconSize: 40,
                    onPressed: (){
                    },
                    icon: new Icon(Icons.settings),
                    color: Color.fromRGBO(114, 204,80,1),
                  );
                }
            ),
          ),

          Align(
            alignment: Alignment(-0.0,-0.3),
            child:
            Text( 'Previous Orders',
                style: TextStyle(
                  fontFamily: 'Montserrat',
                  fontWeight: FontWeight.bold,
                  fontSize: 40.0,
                  color: Color.fromRGBO(48,126,19,1),
                )
            ),
          ),
        ],
      ),
    );
  }
}
//Sidebar
Widget Sidebar(
    {
      required String text,
      required IconData icon,
      VoidCallback? onClicked,

    }){
  final color = Colors.green;
  final hoverColor = Colors.white70;
  return ListTile(
    leading: Icon(icon,color: color,size: 30,),
    title: Text(text,
        style: TextStyle(
            fontFamily: 'Montserrat',
            fontSize: 16,
            color:color)),
    hoverColor: hoverColor,
    onTap: onClicked,


  );
}

selectedItem(BuildContext context, int index) {
  Navigator.of(context).pop();
  switch(index){
    case 0:
      Navigator.of(context).push(MaterialPageRoute(
        builder: (context) => HomeScreen(),));
      break;
    case 1:
      Navigator.of(context).push(MaterialPageRoute(
        builder: (context) => EditMenu(),));
      break;
    case 2:
      break;
    case 3:
      Navigator.of(context).push(MaterialPageRoute(
        builder: (context) => ManageTeam(),));
      break;

  }
}


