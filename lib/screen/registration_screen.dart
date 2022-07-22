import 'package:flutter/material.dart';
import 'loginscreen.dart';
class RegistrationScreen extends StatelessWidget {
  const RegistrationScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
    appBar: AppBar(
      leading: IconButton(
        icon: Icon(Icons.menu),
        onPressed: () {  },
      ),
      title: Text("Registration screen"),
    ),
      body: WillPopScope(
        onWillPop: (){
          return Future.value(true);
        },
        child: Center(
          child: Column()
        )
      )
    );
  }
}
