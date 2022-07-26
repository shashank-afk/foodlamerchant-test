import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'registration_screen.dart';
class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

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
            //PHONE NO. FIELD
            Align(
              alignment: Alignment(1.0,0.2),
              child: SizedBox(

                width: 356,
                child: TextField(
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    hintStyle: TextStyle(
                      fontFamily: 'Montserrat',
                      color: Colors.grey,
                      fontSize: 16,
                    ),

                    floatingLabelBehavior: FloatingLabelBehavior.always,
                    hintText: 'Eg. 7281956382',
                  ),
                  inputFormatters: [FilteringTextInputFormatter.digitsOnly],
                  keyboardType: TextInputType.phone,
                  cursorColor: Color.fromRGBO(114, 204,80,1),
                ),
              ),
            ),

            Align(
              alignment: Alignment(0.0,-0.6),
              child:
              Text( 'misrut',
                  style: TextStyle(
                    fontSize: 48.0,
                    fontFamily: 'Montserrat',
                    color: Colors.black,
                  )
              ),
            ),

            Align(
              alignment: Alignment(0.0,-0.4),
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
              alignment: Alignment(-0.8,0.1),
              child:
              Text( 'WhatsApp Number',
                  style: TextStyle(
                    fontFamily: 'Montserrat',
                    fontSize: 14.0,
                    color: Color.fromRGBO(48, 126,19,1),
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
                  child: Text('Next',style: TextStyle(fontFamily: 'Montserrat',),),


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
