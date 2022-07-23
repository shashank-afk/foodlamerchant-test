import 'package:flutter/material.dart';
class RegistrationScreen extends StatelessWidget {
  const RegistrationScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(


      body:
      Stack(

        children: [
          Align(
            alignment: Alignment(0.0,-0.3),
            child: Container(
              width: 130,
              height: 130,
              decoration: BoxDecoration(
                border: Border.all(
                  width: 3,
                  color: Color.fromRGBO(114, 204,80,1),
                ),

                shape: BoxShape.circle,
                image: DecorationImage(
                 fit: BoxFit.cover,
                  image:NetworkImage("https://upload.wikimedia.org/wikipedia/commons/a/ac/Default_pfp.jpg")
                )
              ),

            ),
          ),
          Align(
            alignment: Alignment(0.0,-0.8),
            child:
            Text( 'misrut',
                style: TextStyle(
                  fontSize: 48.0,
                  color: Colors.black,
                )
            ),
          ),

          Align(
            alignment: Alignment(0.0,-0.6),
            child:
            Text( 'marketing content',
                style: TextStyle(
                  fontSize: 14.0,
                  color: Colors.black,
                )
            ),
          ),




          Align(
            alignment: Alignment(0.0,0.6),
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
