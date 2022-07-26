
import 'package:flutter/material.dart';
class RegistrationScreen extends StatelessWidget {
  const RegistrationScreen({Key? key}) : super(key: key);
  @override

  //bottom modal screen
  Widget buildSheet() {

      return Container(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
        Container(
        child: ListTile(
            title: Text(
                "Profile Picture",
                    style: TextStyle(
                      fontSize: 20,
                    ),
            ),
      ),
        ),

            Container(
              child: ListTile(
                subtitle: Column(
                  children: <Widget>[
                    SizedBox(
                      width: 300,
                      child: TextButton(child: Text('Gallery',
                      style: TextStyle(
                        fontSize: 20,
                        color: Colors.black,
                      ),
                      ),
                          onPressed: () {}),
                    )
                  ],
                ),
                leading: IconButton(
                  icon:new Icon(Icons.image_outlined),
                    iconSize: 38,
                    onPressed: (){},
                  color: Color.fromRGBO(114, 204,80,1),
                ),
              ),
            ),
            Container(
              child: ListTile(
                subtitle: Column(
                  children: <Widget>[
                    SizedBox(
                      width: 300,
                      child: TextButton(child: Text('Camera',
                        style: TextStyle(
                          fontSize: 20,
                          color: Colors.black,
                        ),), onPressed: () {}),
                    )
                  ],
                ),
                leading: IconButton(
                  icon:new Icon(Icons.camera_alt_outlined),
                  iconSize: 38,
                  color: Color.fromRGBO(114, 204,80,1),
                  onPressed: (){},
                ),
              ),
            )
          ],
        ),
      );
    }







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
            child: ClipOval(
            child: Material(
                type: MaterialType.transparency,
            color: Colors.transparent,

            child:Ink.image(
              image: NetworkImage("https://upload.wikimedia.org/wikipedia/commons/a/ac/Default_pfp.jpg"),


              fit:BoxFit.cover,
              width: 130,
              height: 130,
              child: InkWell(
                child: Ink(
                  height: 130,
                  width: 130,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Colors.transparent,
                    border: Border.all(
                      color: Color.fromRGBO(114, 204,80,1),
                      width: 3.0,
                    ),
                ),

                ),
                onTap: (){print("tapped");},
              ),

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


                  child: IconButton(
                    padding: EdgeInsets.only(top:0.1),
                    icon: new Icon(Icons.edit),
                    color:Color.fromRGBO(114, 204,80,1) ,
                    onPressed:() =>showModalBottomSheet(context: context, builder:(context) => buildSheet()) ,

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
