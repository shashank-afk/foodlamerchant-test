
import 'package:flutter/material.dart';
class RegistrationScreen extends StatelessWidget {
  const RegistrationScreen({Key? key}) : super(key: key);

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

          //IMAGE
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

          //EDIT BUTTON
          Align(
              alignment: Alignment(0.3,-0.16),
              child: Container(
                height: 40,
                width: 40,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  border: Border.all(
                    width: 2,
                    color:Colors.black,
                  ),
                  color: Colors.white,
                ),
                child: Icon(Icons.edit,
                  color:Color.fromRGBO(114, 204,80,1) ,
                ),

              )
          ),

          //MISRUT
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

          //MARKETING CONTENT

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



          //NEXT BUTTON

          Align(
            alignment: Alignment(0.0,0.7),
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

          //NAME TEXT

          Align(
            alignment: Alignment(-0.8,0.1),
            child:
            Text( 'Name',
                style: TextStyle(
                  fontSize: 14.0,
                  color: Color.fromRGBO(48, 126,19,1),
                )
            ),
          ),

          //NAME FIELD
          Align(
            alignment: Alignment(1.0,0.2),
            child: SizedBox(

              width: 356,
              child: TextField(
                decoration: InputDecoration(
                  border: InputBorder.none,
                  hintStyle: TextStyle(
                    color: Colors.grey,
                    fontSize: 16,
                  ),

                  floatingLabelBehavior: FloatingLabelBehavior.always,
                  hintText: 'Name',
                ),

                cursorColor: Color.fromRGBO(114, 204,80,1),
              ),
            ),
          ),

          //EMAIL TEXT
          Align(
            alignment: Alignment(-0.8,0.3),
            child:
            Text( 'Email',
                style: TextStyle(
                  fontSize: 14.0,
                  color: Color.fromRGBO(48, 126,19,1),
                )
            ),
          ),

          //EMAIL FIELD
          Align(
            alignment: Alignment(1.0,0.4),
            child: SizedBox(

              width: 356,
              child: TextField(
                decoration: InputDecoration(
                  border: InputBorder.none,
                  hintStyle: TextStyle(
                    color: Colors.grey,
                    fontSize: 16,
                  ),

                  floatingLabelBehavior: FloatingLabelBehavior.always,
                  hintText: 'Eg. cafeawesome@gmail.com',
                ),

                cursorColor: Color.fromRGBO(114, 204,80,1),
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
