import 'dart:io';
import 'package:flutter/services.dart';
import 'package:image_picker/image_picker.dart';
import 'package:flutter/material.dart';
import '/theme/theme.dart';
import 'Restraunt_setupScreen.dart';

class deliveryRegistrationScreen extends StatefulWidget {
  @override
  State<deliveryRegistrationScreen> createState() => _RegistrationScreenState();
}

class _RegistrationScreenState extends State<deliveryRegistrationScreen> {
  File? image;

  Future pickImage(ImageSource source) async {
    try {
      final image = await ImagePicker().pickImage(source: source);
      if (image == null) return;

      final imageTemporary = File(image.path);
      this.image = imageTemporary;
      setState(() => this.image = imageTemporary);
    } on PlatformException catch (e) {
      print('failed to pick image: $e');
      // TODO
    }
  }

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
                  fontFamily: 'Montserrat',
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
                    child: TextButton(
                        child: Text(
                          'Gallery',
                          style: TextStyle(
                            fontFamily: 'Montserrat',
                            fontSize: 20,
                            color: Colors.black,
                          ),
                        ),
                        onPressed: () => pickImage(ImageSource.gallery)),
                  )
                ],
              ),
              leading: IconButton(
                icon: new Icon(Icons.image_outlined),
                iconSize: 38,
                onPressed: () {},
                color: Color.fromRGBO(114, 204, 80, 1),
              ),
            ),
          ),
          Container(
            child: ListTile(
              subtitle: Column(
                children: <Widget>[
                  SizedBox(
                    width: 300,
                    child: TextButton(
                        child: Text(
                          'Camera',
                          style: TextStyle(
                            fontFamily: 'Montserrat',
                            fontSize: 20,
                            color: Colors.black,
                          ),
                        ),
                        onPressed: () => pickImage(ImageSource.camera)),
                  ),
                ],
              ),
              leading: IconButton(
                icon: new Icon(Icons.camera_alt_outlined),
                iconSize: 38,
                color: Color.fromRGBO(114, 204, 80, 1),
                onPressed: () {},
              ),
            ),
          )
        ],
      ),
    );
  }

  Widget build(BuildContext context) {
    return Scaffold(
      body: GestureDetector(
        behavior: HitTestBehavior.translucent,
        onTap: () => FocusManager.instance.primaryFocus?.unfocus(),
        child: ListView(
          children: [
            //sizedbox
            SizedBox(
              height: 80,
            ),
            //MISRUT
            Padding(
              padding: EdgeInsets.fromLTRB(130, 40, 40, 2),
              child: Text('misrut',
                  style: TextStyle(
                    fontFamily: 'Montserrat',
                    fontSize: 48.0,
                    color: Colors.black,
                  )),
            ),

            //MARKETING CONTENT

            Padding(
              padding: EdgeInsets.fromLTRB(145, 2, 40, 20),
              child: Text('marketing content',
                  style: TextStyle(
                    fontFamily: 'Montserrat',
                    fontSize: 14.0,
                    color: Colors.black,
                  )),
            ),
            //sizedbox
            SizedBox(
              height: 40,
            ),
            //IMAGE
            Stack(children: [
              Container(
                alignment: Alignment(0.1, 0.35),
                child: ClipOval(
                    child: image != null
                        ? Image.file(
                            image!,
                            width: 160,
                            height: 160,
                            fit: BoxFit.cover,
                          )
                        : Image(
                            image: NetworkImage(
                                "https://upload.wikimedia.org/wikipedia/commons/a/ac/Default_pfp.jpg"),
                            width: 160,
                            height: 160,
                            fit: BoxFit.cover,
                          )),
              ),

              //EDIT BUTTON
              Padding(
                  padding: EdgeInsets.fromLTRB(235, 120, 20, 2),
                  child: Container(
                    height: 40,
                    width: 40,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      border: Border.all(
                        width: 2,
                        color: Colors.black,
                      ),
                      color: Colors.white,
                    ),
                    child: IconButton(
                      padding: EdgeInsets.only(top: 0.1),
                      icon: new Icon(Icons.edit),
                      color: Color.fromRGBO(114, 204, 80, 1),
                      onPressed: () => showModalBottomSheet(
                          context: context, builder: (context) => buildSheet()),
                    ),
                  )),
            ]),
            SizedBox(
              height: 20,
            ),
            //NAME TEXT

            Padding(
              padding: EdgeInsets.fromLTRB(35, 5, 10, 2),
              child: Text('Name',
                  style: TextStyle(
                    fontFamily: 'Montserrat',
                    fontSize: 14.0,
                    color: Color.fromRGBO(48, 126, 19, 1),
                  )),
            ),

            //NAME FIELD
            Padding(
              padding: EdgeInsets.fromLTRB(35, 2, 10, 10),
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
                    hintText: 'Name',
                  ),
                  cursorColor: Color.fromRGBO(114, 204, 80, 1),
                ),
              ),
            ),
            //NEXT BUTTON

            Align(
              alignment: Alignment(0.0, 0.7),
              child: Container(
                padding: EdgeInsets.all(32),
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    fixedSize: Size(366, 60),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15)),
                    textStyle: TextStyle(fontSize: 16),
                    primary: Color.fromRGBO(114, 204, 80, 1),
                    onPrimary: Colors.white,
                  ),
                  onPressed: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (context) => restaurantSetup(),
                      ),
                    );
                  },
                  child: Text(
                    'Next',
                    style: TextStyle(
                      fontFamily: 'Montserrat',
                    ),
                  ),
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
