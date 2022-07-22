import 'package:flutter/material.dart';

import 'registration_screen.dart';
class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(




      body:Stack(
        children: [
        Align(
          alignment: Alignment(0.0,-0.6),
          child:
          Text( 'misrut',
            style: TextStyle(
              fontSize: 48.0,
              color: Colors.black,
            )
        ),
        ),

          Align(
            alignment: Alignment(0.0,-0.4),
            child:
            Text( 'marketing content',
                style: TextStyle(
                  fontSize: 14.0,
                  color: Colors.black,
                )
            ),
          ),




          Align(
          alignment: Alignment(0.0,0.4),
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
                MaterialPageRoute(builder: (context) => RegistrationScreen(),
                ),

              );
            },
            child: Text('Next'),


          ),
        ),
          ),
  ],
    ),


    );
  }
}
