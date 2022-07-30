import 'package:flutter/material.dart';

import 'Thankyou_Screen.dart';
class RestaurantMenu extends StatefulWidget {
  const RestaurantMenu({Key? key}) : super(key: key);

  @override
  State<RestaurantMenu> createState() => _RestaurantMenuState();
}

class _RestaurantMenuState extends State<RestaurantMenu> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(



      body:
      GestureDetector(
        behavior: HitTestBehavior.translucent,

        onTap: () => FocusManager.instance.primaryFocus?.unfocus(),
        child:
        Stack(

          children: [

            Align(
              alignment: Alignment(0.0,-0.9),
              child:
              Text( 'misrut',
                  style: TextStyle(
                    fontFamily: 'Montserrat',
                    fontSize: 48.0,
                    color: Colors.black,
                  )
              ),
            ),

            Align(
              alignment: Alignment(0.0,-0.7),
              child:
              Text( 'marketing content',
                  style: TextStyle(
                    fontFamily: 'Montserrat',
                    fontSize: 14.0,
                    color: Colors.black,
                  )
              ),
            ),

            Align(
              alignment: Alignment(-0.8,-0.5),
              child:
              Text( 'Restaurant Menu',
                  style: TextStyle(
                    fontFamily: 'Montserrat',
                    fontSize: 14.0,
                    color: Color.fromRGBO(48, 126,19,1),
                  )
              ),
            ),


            Align(
              alignment: Alignment(0.0,1),
              child: Container(
                padding: EdgeInsets.all(32),

                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(

                    fixedSize: Size(366,60),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15)
                    ),
                    textStyle: TextStyle(fontSize: 16),
                    primary: Color.fromRGBO(114, 204,80,1),
                    onPrimary: Colors.white,
                  ),
                  onPressed: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(builder: (context) =>ThankyouScreen(),
                      ),

                    );
                  },
                  child: Text('Next',
                  style: TextStyle(fontFamily: 'Montserrat',),),


                ),
              ),
            ),
          ],
        ),

      ),

      resizeToAvoidBottomInset: false,
    );

  }
}
