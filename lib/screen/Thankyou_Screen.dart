import 'package:flutter/material.dart';
import 'HomeScreen.dart';

class ThankyouScreen extends StatelessWidget {
  const ThankyouScreen({Key? key}) : super(key: key);

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
              alignment: Alignment(-0.0,-0.3),
              child:
              Text( 'Thank you',
                  style: TextStyle(
                    fontFamily: 'Montserrat',
                    fontWeight: FontWeight.bold,
                    fontSize: 52.0,
                    color: Color.fromRGBO(114, 204,80,1),
                  )
              ),
            ),

            
            Padding(padding: EdgeInsets.all(50),
              child: Align(
                alignment: Alignment(0.0,0.3),
                child:
                Text( 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Amet interdum quisque non consequat nascetur aliquam diam sed non. Praesent non, quisque cursus non enim turpis a sagittis. Dignissim integer leo blandit congue. Tellus nunc vulputate praesent at elementum viverra faucibus proin quam.',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontFamily: 'Montserrat',
                      fontSize: 16.0,
                      color: Colors.black,
                    )
                ),
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
                      MaterialPageRoute(builder: (context) => HomeScreen(),
                      ),

                    );
                  },
                  child: Text('Next',
                  style: TextStyle(
                    fontFamily: 'Montserrat',
                  ),),


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
