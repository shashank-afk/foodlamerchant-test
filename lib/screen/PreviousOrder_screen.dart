import 'package:flutter/material.dart';
import 'EditMenu_screen.dart';
import 'HomeScreen.dart';
import 'package:dotted_line/dotted_line.dart';
import 'ManageTeam_screen.dart';
import 'DeliveryPartner_screen1.dart';
import '/theme/theme.dart';

class PreviousOrders extends StatefulWidget {
  const PreviousOrders({Key? key}) : super(key: key);

  @override
  State<PreviousOrders> createState() => _PreviousOrdersState();
}

class _PreviousOrdersState extends State<PreviousOrders> {
  @override
  Widget build(BuildContext context) => Scaffold(
        extendBodyBehindAppBar: true,
        //backgroundColor: ,

        drawer: Drawer(
          child: Material(
            child: ListView(
              children: [
                SizedBox(height: 40),
                //red box
                Center(
                  child: Stack(
                    children: [
                      Center(
                          child: Container(
                        margin: EdgeInsets.all(25),
                        height: 250,
                        color: Color.fromARGB(26, 140, 255, 148),
                      )),
                      //qr
                      Center(
                        child: Container(
                          margin: EdgeInsets.all(23),
                          height: 274,
                          width: 274,
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              image: NetworkImage(
                                  'https://upload.wikimedia.org/wikipedia/commons/thumb/d/d0/QR_code_for_mobile_English_Wikipedia.svg/1200px-QR_code_for_mobile_English_Wikipedia.svg.png'),
                            ),
                          ),
                        ),
                      ),

                      //image
                      Center(
                        child: Container(
                          padding: EdgeInsets.fromLTRB(50, 2, 0, 2),
                          width: 56,
                          height: 56,
                          margin: EdgeInsets.only(top: 1),
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            image: DecorationImage(
                              image: NetworkImage(
                                  'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR9r1_YSmcVGZ6HvKKog6_GM7WfjQroxlxQQg&usqp=CAU'),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 20,
                  child: Text(
                    "Aaditya Cholayil",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontFamily: 'Montserrat',
                      fontSize: 19.0,
                      color: Colors.black,
                    ),
                  ),
                ),
                SizedBox(
                  height: 20,
                  child: Text(
                    "View profile",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontFamily: 'Montserrat',
                      fontSize: 15.0,
                      color: CustomTheme.accent,
                    ),
                  ),
                ),
                SizedBox(height: 10),
                Divider(
                  color: CustomTheme.t2,
                  height: 20,
                  thickness: 1,
                ),
                SizedBox(height: 10),
                Sidebar(
                  text: 'Active Orders',
                  icon: Icons.fastfood_outlined,
                  onClicked: () => selectedItem(context, 0),
                ),
                SizedBox(
                  height: 16,
                ),
                Sidebar(
                  text: 'Edit Menu',
                  icon: Icons.auto_stories_outlined,
                  onClicked: () => selectedItem(context, 1),
                ),
                SizedBox(
                  height: 16,
                ),
                Sidebar(
                  text: 'Previous Orders',
                  icon: Icons.watch_later_outlined,
                  onClicked: () => selectedItem(context, 2),
                ),
                SizedBox(
                  height: 16,
                ),
                Sidebar(
                  text: 'Manage Team',
                  icon: Icons.group,
                  onClicked: () => selectedItem(context, 3),
                ),
              ],
            ),
          ),
        ),
        body: ListView(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                //MENU ICON
                Container(
                  padding: EdgeInsets.all(10),
                  child: Column(
                    children: [
                      Builder(builder: (context) {
                        return IconButton(
                          tooltip: MaterialLocalizations.of(context)
                              .openAppDrawerTooltip,
                          iconSize: 40,
                          onPressed: () {
                            Scaffold.of(context).openDrawer();
                          },
                          icon: new Icon(Icons.menu_outlined),
                          color: Color.fromRGBO(114, 204, 80, 1),
                        );
                      }),
                    ],
                  ),
                ),

                //GEAR ICON
                Container(
                  padding: EdgeInsets.all(10),
                  child: Column(
                    children: [
                      Builder(builder: (context) {
                        return IconButton(
                          tooltip: MaterialLocalizations.of(context)
                              .openAppDrawerTooltip,
                          iconSize: 40,
                          onPressed: () {},
                          icon: new Icon(Icons.settings),
                          color: Color.fromRGBO(114, 204, 80, 1),
                        );
                      }),
                    ],
                  ),
                ),
              ],
            ),
            //previousorderstext
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  padding: EdgeInsets.fromLTRB(20, 0, 0, 0),
                  child: Text('Previous Orders',
                      style: TextStyle(
                        fontFamily: 'Montserrat',
                        fontWeight: FontWeight.bold,
                        fontSize: 40.0,
                        color: Color.fromRGBO(48, 126, 19, 1),
                      )),
                ),
              ],
            ),
            //previousorder 1
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                SizedBox(
                  height: 20,
                ),
                Container(
                  height: 690,
                  width: 366,
                  decoration: const BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(15)),
                    color: Colors.white,
                  ),
                  child: Column(
                    children: [
                      //order id
                      Align(
                        alignment: Alignment.topLeft,
                        child: Padding(
                          padding: EdgeInsets.all(20),
                          child: Text(
                            'Order ID: 128638',
                            style: TextStyle(
                              fontFamily: 'Montserrat',
                              fontWeight: FontWeight.bold,
                              fontSize: 16.0,
                              color: Colors.black,
                            ),
                          ),
                        ),
                      ),
                      //Customer Address
                      Align(
                        alignment: Alignment(-0.85, 0.3),
                        child: Text(
                          "Customer Address",
                          style: TextStyle(
                            fontFamily: 'Montserrat',
                            fontSize: 14.0,
                            color: Colors.grey,
                          ),
                        ),
                      ),
                      //address row
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            alignment: Alignment.topLeft,
                            padding: EdgeInsets.all(10),
                            child: Column(children: <Widget>[
                              Text(
                                "H1404, Palacia, Hirandani",
                                textAlign: TextAlign.start,
                                style: TextStyle(
                                  fontFamily: 'Montserrat',
                                  fontSize: 18.0,
                                  color: Colors.black,
                                ),
                              ),
                              Text(
                                "Estate, Near Bhoomi Acres",
                                style: TextStyle(
                                  fontFamily: 'Montserrat',
                                  fontSize: 18.0,
                                  color: Colors.black,
                                ),
                              ),
                              Text(
                                "Circle, Thane West, 400607",
                                style: TextStyle(
                                  fontFamily: 'Montserrat',
                                  fontSize: 18.0,
                                  color: Colors.black,
                                ),
                              ),
                            ]),
                          ),

                          //show on map icon row

                          Container(
                            padding: EdgeInsets.fromLTRB(20, 0, 2, 0),
                            child: Column(
                              children: [
                                Builder(builder: (context) {
                                  return IconButton(
                                      iconSize: 40,
                                      onPressed: () {},
                                      icon: new Icon(Icons.location_on),
                                      color: CustomTheme.accent);
                                }),
                                Container(
                                  //alignment: Alignment(1, 1),
                                  child: Column(children: <Widget>[
                                    Text(
                                      "show",
                                      textAlign: TextAlign.start,
                                      style: TextStyle(
                                        fontFamily: 'Montserrat',
                                        fontSize: 13.0,
                                        color: CustomTheme.accent,
                                      ),
                                    ),
                                    Text(
                                      "on map",
                                      style: TextStyle(
                                        fontFamily: 'Montserrat',
                                        fontSize: 13.0,
                                        color: CustomTheme.accent,
                                      ),
                                    ),
                                  ]),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                      //Customer Name
                      Align(
                        alignment: Alignment(-0.85, 0.3),
                        child: Text(
                          "Customer Name",
                          style: TextStyle(
                            fontFamily: 'Montserrat',
                            fontSize: 14.0,
                            color: CustomTheme.t2,
                          ),
                        ),
                      ),

                      //name
                      Container(
                          alignment: Alignment.centerLeft,
                          padding: EdgeInsets.fromLTRB(20, 10, 0, 10),
                          child: Column(
                            children: <Widget>[
                              Text(
                                "John Doe",
                                style: TextStyle(
                                  fontFamily: 'Montserrat',
                                  fontSize: 18.0,
                                  color: CustomTheme.t1,
                                ),
                              ),
                            ],
                          )),
                      //Customer no
                      Align(
                        alignment: Alignment(-0.80, 0.3),
                        child: Text(
                          "Customer Phone Number",
                          style: TextStyle(
                            fontFamily: 'Montserrat',
                            fontSize: 14.0,
                            color: CustomTheme.t2,
                          ),
                        ),
                      ),

                      //no
                      Container(
                          alignment: Alignment.centerLeft,
                          padding: EdgeInsets.fromLTRB(20, 10, 0, 10),
                          child: Column(
                            children: <Widget>[
                              Text(
                                "8291369867",
                                style: TextStyle(
                                  fontFamily: 'Montserrat',
                                  fontSize: 18.0,
                                  color: CustomTheme.t1,
                                ),
                              ),
                            ],
                          )),
                      //Order Summary
                      Align(
                        alignment: Alignment(-0.83, 0.3),
                        child: Text(
                          "Order Summary",
                          style: TextStyle(
                            fontFamily: 'Montserrat',
                            fontSize: 14.0,
                            color: CustomTheme.t2,
                          ),
                        ),
                      ),
                      //Item Row1 blabla
                      Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            //dot image1
                            Builder(builder: (context) {
                              return IconButton(
                                iconSize: 20,
                                onPressed: () {},
                                icon: new Icon(Icons.center_focus_strong),
                                color: CustomTheme.t1,
                              );
                            }),
                            //Item name1
                            Container(
                              alignment: Alignment.topLeft,
                              padding: EdgeInsets.all(10),
                              child: Column(children: <Widget>[
                                Text(
                                  "ItemName",
                                  style: TextStyle(
                                    fontFamily: 'Montserrat',
                                    fontSize: 18.0,
                                    color: CustomTheme.t1,
                                  ),
                                ),
                              ]),
                            ),
                            //qty1
                            Container(
                              alignment: Alignment.topLeft,
                              padding: EdgeInsets.fromLTRB(160, 10, 2, 10),
                              child: Column(children: <Widget>[
                                Text(
                                  "x2",
                                  style: TextStyle(
                                    fontFamily: 'Montserrat',
                                    fontSize: 18.0,
                                    color: CustomTheme.darkGreen,
                                  ),
                                ),
                              ]),
                            ),
                          ]),
                      //Rupee300 sizedbox
                      Padding(
                        padding: EdgeInsets.fromLTRB(60, 2, 10, 2),
                        child: Align(
                          alignment: Alignment.topLeft,
                          child: const SizedBox(
                            height: 20,
                            child: Text(
                              "₹300",
                              style: TextStyle(
                                fontFamily: 'Montserrat',
                                fontSize: 17.0,
                                color: Colors.black,
                              ),
                            ),
                          ),
                        ),
                      ),
                      //Item Row2 blabla
                      Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            //dot image2
                            Builder(builder: (context) {
                              return IconButton(
                                iconSize: 20,
                                onPressed: () {},
                                icon: new Icon(Icons.center_focus_strong),
                                color: CustomTheme.t1,
                              );
                            }),
                            //Item name2
                            Container(
                              alignment: Alignment.topLeft,
                              padding: EdgeInsets.all(10),
                              child: Column(children: <Widget>[
                                Text(
                                  "ItemName",
                                  style: TextStyle(
                                    fontFamily: 'Montserrat',
                                    fontSize: 18.0,
                                    color: CustomTheme.t1,
                                  ),
                                ),
                              ]),
                            ),
                            //qty2
                            Container(
                              alignment: Alignment.topLeft,
                              padding: EdgeInsets.fromLTRB(160, 10, 2, 10),
                              child: Column(children: <Widget>[
                                Text(
                                  "x2",
                                  style: TextStyle(
                                    fontFamily: 'Montserrat',
                                    fontSize: 18.0,
                                    color: CustomTheme.darkGreen,
                                  ),
                                ),
                              ]),
                            ),
                          ]),
                      //rupee300 sized box
                      Padding(
                        padding: const EdgeInsets.fromLTRB(60, 2, 10, 2),
                        child: Align(
                          alignment: Alignment.topLeft,
                          child: const SizedBox(
                            height: 20,
                            child: Text(
                              "₹300",
                              style: TextStyle(
                                fontFamily: 'Montserrat',
                                fontSize: 17.0,
                                color: Colors.black,
                              ),
                            ),
                          ),
                        ),
                      ),
                      //Item Row3 blabla
                      Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            //dot image3
                            Builder(builder: (context) {
                              return IconButton(
                                iconSize: 20,
                                onPressed: () {},
                                icon: new Icon(Icons.center_focus_strong),
                                color: CustomTheme.t1,
                              );
                            }),
                            //Item name3
                            Container(
                              alignment: Alignment.topLeft,
                              padding: EdgeInsets.all(10),
                              child: Column(children: <Widget>[
                                Text(
                                  "ItemName",
                                  style: TextStyle(
                                    fontFamily: 'Montserrat',
                                    fontSize: 18.0,
                                    color: CustomTheme.t1,
                                  ),
                                ),
                              ]),
                            ),
                            //qty3
                            Container(
                              alignment: Alignment.topRight,
                              padding: EdgeInsets.fromLTRB(160, 10, 2, 10),
                              child: Column(children: <Widget>[
                                Text(
                                  "x2",
                                  style: TextStyle(
                                    fontFamily: 'Montserrat',
                                    fontSize: 18.0,
                                    color: CustomTheme.darkGreen,
                                  ),
                                ),
                              ]),
                            ),
                          ]),
                      //rupee300 sizedbox
                      Padding(
                        padding: const EdgeInsets.fromLTRB(60, 2, 10, 2),
                        child: Align(
                          alignment: Alignment.topLeft,
                          child: const SizedBox(
                            height: 20,
                            child: Text(
                              "₹300",
                              style: TextStyle(
                                fontFamily: 'Montserrat',
                                fontSize: 17.0,
                                color: Colors.black,
                              ),
                            ),
                          ),
                        ),
                      ),

                      //dashed seperator
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: DottedLine(
                          direction: Axis.horizontal,
                          lineLength: 325,
                          dashLength: 6,
                          dashGapLength: 6,
                          lineThickness: 1,
                        ),
                      ),

                      //totalRow
                      Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            //Total
                            Container(
                              alignment: Alignment.topLeft,
                              padding: EdgeInsets.fromLTRB(20, 10, 2, 2),
                              child: Column(children: <Widget>[
                                Text(
                                  "Total",
                                  style: TextStyle(
                                    fontFamily: 'Montserrat',
                                    fontSize: 18.0,
                                    color: CustomTheme.t1,
                                  ),
                                ),
                              ]),
                            ),
                            //total
                            Container(
                              alignment: Alignment.topLeft,
                              padding: EdgeInsets.fromLTRB(160, 10, 2, 10),
                              child: Column(children: <Widget>[
                                Text(
                                  "₹900",
                                  style: TextStyle(
                                    fontFamily: 'Montserrat',
                                    fontSize: 18.0,
                                    fontWeight: FontWeight.bold,
                                    color: CustomTheme.t1,
                                  ),
                                ),
                              ]),
                            ),
                          ]),
                      //seperator
                      const Divider(
                        height: 20,
                        thickness: 1,
                        indent: 20,
                        endIndent: 20,
                        color: Colors.black,
                      ),

                      //sizedbox
                      SizedBox(
                        height: 10,
                      ),
                      //Button
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          // //Reject
                          // SizedBox(height: 5),
                          // ElevatedButton(
                          //   style: ElevatedButton.styleFrom(
                          //     backgroundColor: Color.fromRGBO(252, 76, 60, 1),
                          //     //primary: CustomTheme.accent,
                          //     padding: EdgeInsets.symmetric(
                          //       horizontal: 29,
                          //       vertical: 10,
                          //     ),
                          //     shape: RoundedRectangleBorder(
                          //       borderRadius: BorderRadius.circular(10),
                          //     ),
                          //   ),
                          //   child: Padding(
                          //     padding: EdgeInsets.all(8.0),
                          //     child: Text(
                          //       '✕ Reject',
                          //       style: TextStyle(
                          //         fontSize: 16,
                          //         color: Colors.white,
                          //       ),
                          //     ),
                          //   ),
                          //   onPressed: () async {},
                          // ),
                          SizedBox(height: 5),
                          //Accept
                          SizedBox(height: 5),
                          ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              backgroundColor: CustomTheme.accent,
                              //primary: CustomTheme.accent,
                              padding: EdgeInsets.symmetric(
                                horizontal: 29,
                                vertical: 10,
                              ),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10),
                              ),
                            ),
                            child: Padding(
                              padding: EdgeInsets.all(8.0),
                              child: Text(
                                '✓ Delivered',
                                style: TextStyle(
                                  fontSize: 16,
                                  color: Colors.white,
                                ),
                              ),
                            ),
                            onPressed: () async {},
                          ),
                        ],
                      ),

                      //hide order summary
                      Column(
                        children: [
                          Padding(
                            padding: EdgeInsets.fromLTRB(60, 20, 10, 2),
                            child: Align(
                              alignment: Alignment.topRight,
                              child: const SizedBox(
                                height: 20,
                                child: Text(
                                  "Hide Order Summary  ▲",
                                  style: TextStyle(
                                    fontFamily: 'Montserrat',
                                    fontSize: 16.0,
                                    color: Color.fromRGBO(114, 204, 80, 1),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                )
              ],
            ),
            //previousorder 2
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                SizedBox(
                  height: 20,
                ),
                Container(
                  height: 690,
                  width: 366,
                  decoration: const BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(15)),
                    color: Colors.white,
                  ),
                  child: Column(
                    children: [
                      //order id
                      Align(
                        alignment: Alignment.topLeft,
                        child: Padding(
                          padding: EdgeInsets.all(20),
                          child: Text(
                            'Order ID: 128789',
                            style: TextStyle(
                              fontFamily: 'Montserrat',
                              fontWeight: FontWeight.bold,
                              fontSize: 16.0,
                              color: CustomTheme.t1,
                            ),
                          ),
                        ),
                      ),
                      //Customer Address
                      Align(
                        alignment: Alignment(-0.85, 0.3),
                        child: Text(
                          "Customer Address",
                          style: TextStyle(
                            fontFamily: 'Montserrat',
                            fontSize: 14.0,
                            color: CustomTheme.t2,
                          ),
                        ),
                      ),
                      //address row
                      Container(
                        padding: EdgeInsets.fromLTRB(20, 0, 20, 0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              alignment: Alignment.centerLeft,
                              padding: EdgeInsets.all(10),
                              child: Column(children: <Widget>[
                                Text(
                                  "B4 1202, SRS Royal",
                                  textAlign: TextAlign.start,
                                  style: TextStyle(
                                      fontFamily: 'Montserrat',
                                      fontSize: 18.0,
                                      color: CustomTheme.t1),
                                ),
                                Text(
                                  "Hills, Sector 87",
                                  style: TextStyle(
                                      fontFamily: 'Montserrat',
                                      fontSize: 18.0,
                                      color: CustomTheme.t1),
                                ),
                                Text(
                                  "Faridabad, 121002",
                                  style: TextStyle(
                                      fontFamily: 'Montserrat',
                                      fontSize: 18.0,
                                      color: CustomTheme.t1),
                                ),
                              ]),
                            ),

                            //show on map icon row

                            Column(
                              children: [
                                Builder(builder: (context) {
                                  return IconButton(
                                      iconSize: 40,
                                      onPressed: () {},
                                      icon: new Icon(Icons.location_on),
                                      color: CustomTheme.accent);
                                }),
                                Container(
                                  //alignment: Alignment(1, 1),
                                  child: Column(children: <Widget>[
                                    Text(
                                      "show",
                                      textAlign: TextAlign.start,
                                      style: TextStyle(
                                          fontFamily: 'Montserrat',
                                          fontSize: 13.0,
                                          color: CustomTheme.accent),
                                    ),
                                    Text(
                                      "on map",
                                      style: TextStyle(
                                        fontFamily: 'Montserrat',
                                        fontSize: 13.0,
                                        color: CustomTheme.accent,
                                      ),
                                    ),
                                  ]),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                      //Customer Name
                      Align(
                        alignment: Alignment(-0.85, 0.3),
                        child: Text(
                          "Customer Name",
                          style: TextStyle(
                            fontFamily: 'Montserrat',
                            fontSize: 14.0,
                            color: CustomTheme.t2,
                          ),
                        ),
                      ),

                      //name
                      Container(
                          alignment: Alignment.centerLeft,
                          padding: EdgeInsets.fromLTRB(20, 10, 0, 10),
                          child: Column(
                            children: <Widget>[
                              Text(
                                "Jane Doe",
                                style: TextStyle(
                                  fontFamily: 'Montserrat',
                                  fontSize: 18.0,
                                  color: CustomTheme.t1,
                                ),
                              ),
                            ],
                          )),
                      //Customer no
                      Align(
                        alignment: Alignment(-0.80, 0.3),
                        child: Text(
                          "Customer Phone Number",
                          style: TextStyle(
                            fontFamily: 'Montserrat',
                            fontSize: 14.0,
                            color: CustomTheme.t1,
                          ),
                        ),
                      ),

                      //no
                      Container(
                          alignment: Alignment.centerLeft,
                          padding: EdgeInsets.fromLTRB(20, 10, 0, 10),
                          child: Column(
                            children: <Widget>[
                              Text(
                                "8826532753",
                                style: TextStyle(
                                  fontFamily: 'Montserrat',
                                  fontSize: 18.0,
                                  color: CustomTheme.t1,
                                ),
                              ),
                            ],
                          )),
                      //Order Summary
                      Align(
                        alignment: Alignment(-0.83, 0.3),
                        child: Text(
                          "Order Summary",
                          style: TextStyle(
                            fontFamily: 'Montserrat',
                            fontSize: 14.0,
                            color: CustomTheme.t2,
                          ),
                        ),
                      ),
                      //Item Row1 blabla
                      Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            //dot image1
                            Builder(builder: (context) {
                              return IconButton(
                                iconSize: 20,
                                onPressed: () {},
                                icon: new Icon(Icons.center_focus_strong),
                                color: CustomTheme.t1,
                              );
                            }),
                            //Item name1
                            Container(
                              alignment: Alignment.topLeft,
                              padding: EdgeInsets.all(10),
                              child: Column(children: <Widget>[
                                Text(
                                  "ItemName",
                                  style: TextStyle(
                                    fontFamily: 'Montserrat',
                                    fontSize: 18.0,
                                    color: CustomTheme.t1,
                                  ),
                                ),
                              ]),
                            ),
                            //qty1
                            Container(
                              alignment: Alignment.topLeft,
                              padding: EdgeInsets.fromLTRB(160, 10, 2, 10),
                              child: Column(children: <Widget>[
                                Text(
                                  "x1",
                                  style: TextStyle(
                                    fontFamily: 'Montserrat',
                                    fontSize: 18.0,
                                    color: CustomTheme.darkGreen,
                                  ),
                                ),
                              ]),
                            ),
                          ]),
                      //Rupee300 sizedbox
                      Padding(
                        padding: EdgeInsets.fromLTRB(60, 2, 10, 2),
                        child: Align(
                          alignment: Alignment.topLeft,
                          child: const SizedBox(
                            height: 20,
                            child: Text(
                              "₹210",
                              style: TextStyle(
                                fontFamily: 'Montserrat',
                                fontSize: 17.0,
                                color: Colors.black,
                              ),
                            ),
                          ),
                        ),
                      ),
                      //Item Row2 blabla
                      Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            //dot image2
                            Builder(builder: (context) {
                              return IconButton(
                                iconSize: 20,
                                onPressed: () {},
                                icon: new Icon(Icons.center_focus_strong),
                                color: CustomTheme.t1,
                              );
                            }),
                            //Item name2
                            Container(
                              alignment: Alignment.topLeft,
                              padding: EdgeInsets.all(10),
                              child: Column(children: <Widget>[
                                Text(
                                  "ItemName",
                                  style: TextStyle(
                                    fontFamily: 'Montserrat',
                                    fontSize: 18.0,
                                    color: CustomTheme.t1,
                                  ),
                                ),
                              ]),
                            ),
                            //qty2
                            Container(
                              alignment: Alignment.topLeft,
                              padding: EdgeInsets.fromLTRB(160, 10, 2, 10),
                              child: Column(children: <Widget>[
                                Text(
                                  "x2",
                                  style: TextStyle(
                                    fontFamily: 'Montserrat',
                                    fontSize: 18.0,
                                    color: CustomTheme.darkGreen,
                                  ),
                                ),
                              ]),
                            ),
                          ]),
                      //rupee300 sized box
                      Padding(
                        padding: const EdgeInsets.fromLTRB(60, 2, 10, 2),
                        child: Align(
                          alignment: Alignment.topLeft,
                          child: const SizedBox(
                            height: 20,
                            child: Text(
                              "₹100",
                              style: TextStyle(
                                fontFamily: 'Montserrat',
                                fontSize: 17.0,
                                color: Colors.black,
                              ),
                            ),
                          ),
                        ),
                      ),
                      //Item Row3 blabla
                      Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            //dot image3
                            Builder(builder: (context) {
                              return IconButton(
                                iconSize: 20,
                                onPressed: () {},
                                icon: new Icon(Icons.center_focus_strong),
                                color: CustomTheme.t1,
                              );
                            }),
                            //Item name3
                            Container(
                              alignment: Alignment.topLeft,
                              padding: EdgeInsets.all(10),
                              child: Column(children: <Widget>[
                                Text(
                                  "ItemName",
                                  style: TextStyle(
                                    fontFamily: 'Montserrat',
                                    fontSize: 18.0,
                                    color: CustomTheme.t1,
                                  ),
                                ),
                              ]),
                            ),
                            //qty3
                            Container(
                              alignment: Alignment.topRight,
                              padding: EdgeInsets.fromLTRB(160, 10, 2, 10),
                              child: Column(children: <Widget>[
                                Text(
                                  "x1",
                                  style: TextStyle(
                                    fontFamily: 'Montserrat',
                                    fontSize: 18.0,
                                    color: CustomTheme.darkGreen,
                                  ),
                                ),
                              ]),
                            ),
                          ]),
                      //rupee300 sizedbox
                      Padding(
                        padding: const EdgeInsets.fromLTRB(60, 2, 10, 2),
                        child: Align(
                          alignment: Alignment.topLeft,
                          child: const SizedBox(
                            height: 20,
                            child: Text(
                              "₹50",
                              style: TextStyle(
                                fontFamily: 'Montserrat',
                                fontSize: 17.0,
                                color: Colors.black,
                              ),
                            ),
                          ),
                        ),
                      ),

                      //dashed seperator
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: DottedLine(
                          direction: Axis.horizontal,
                          lineLength: 325,
                          dashLength: 6,
                          dashGapLength: 6,
                          lineThickness: 1,
                        ),
                      ),

                      //totalRow
                      Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            //Total
                            Container(
                              alignment: Alignment.topLeft,
                              padding: EdgeInsets.fromLTRB(20, 10, 2, 2),
                              child: Column(children: <Widget>[
                                Text(
                                  "Total",
                                  style: TextStyle(
                                    fontFamily: 'Montserrat',
                                    fontSize: 18.0,
                                    color: CustomTheme.t1,
                                  ),
                                ),
                              ]),
                            ),
                            //total
                            Container(
                              alignment: Alignment.topLeft,
                              padding: EdgeInsets.fromLTRB(160, 10, 2, 10),
                              child: Column(children: <Widget>[
                                Text(
                                  "₹360",
                                  style: TextStyle(
                                    fontFamily: 'Montserrat',
                                    fontSize: 18.0,
                                    fontWeight: FontWeight.bold,
                                    color: CustomTheme.t1,
                                  ),
                                ),
                              ]),
                            ),
                          ]),
                      //seperator
                      const Divider(
                        height: 20,
                        thickness: 1,
                        indent: 20,
                        endIndent: 20,
                        color: Colors.black,
                      ),

                      //sizedbox
                      SizedBox(
                        height: 10,
                      ),
                      //Button
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          // //Reject
                          // SizedBox(height: 5),
                          // ElevatedButton(
                          //   style: ElevatedButton.styleFrom(
                          //     backgroundColor: Color.fromRGBO(252, 76, 60, 1),
                          //     //primary: CustomTheme.accent,
                          //     padding: EdgeInsets.symmetric(
                          //       horizontal: 29,
                          //       vertical: 10,
                          //     ),
                          //     shape: RoundedRectangleBorder(
                          //       borderRadius: BorderRadius.circular(10),
                          //     ),
                          //   ),
                          //   child: Padding(
                          //     padding: EdgeInsets.all(8.0),
                          //     child: Text(
                          //       '✕ Reject',
                          //       style: TextStyle(
                          //         fontSize: 16,
                          //         color: Colors.white,
                          //       ),
                          //     ),
                          //   ),
                          //   onPressed: () async {},
                          // ),
                          // SizedBox(height: 5),

                          //Accept
                          SizedBox(height: 5),
                          ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              backgroundColor: CustomTheme.accent,
                              //primary: CustomTheme.accent,
                              padding: EdgeInsets.symmetric(
                                horizontal: 29,
                                vertical: 10,
                              ),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10),
                              ),
                            ),
                            child: Padding(
                              padding: EdgeInsets.all(8.0),
                              child: Text(
                                '✓ Delivered',
                                style: TextStyle(
                                  fontSize: 16,
                                  color: Colors.white,
                                ),
                              ),
                            ),
                            onPressed: () async {},
                          ),
                        ],
                      ),

                      //hide order summary
                      Column(
                        children: [
                          Padding(
                            padding: EdgeInsets.fromLTRB(60, 20, 10, 2),
                            child: Align(
                              alignment: Alignment.topRight,
                              child: const SizedBox(
                                height: 20,
                                child: Text(
                                  "Hide Order Summary  ▲",
                                  style: TextStyle(
                                    fontFamily: 'Montserrat',
                                    fontSize: 16.0,
                                    color: Color.fromRGBO(114, 204, 80, 1),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                )
              ],
            ),
            //previousorder 3
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                SizedBox(
                  height: 20,
                ),
                Container(
                  height: 690,
                  width: 366,
                  decoration: const BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(15)),
                    color: Colors.white,
                  ),
                  child: Column(
                    children: [
                      //order id
                      Align(
                        alignment: Alignment.topLeft,
                        child: Padding(
                          padding: EdgeInsets.all(20),
                          child: Text(
                            'Order ID: 122389',
                            style: TextStyle(
                              fontFamily: 'Montserrat',
                              fontWeight: FontWeight.bold,
                              fontSize: 16.0,
                              color: CustomTheme.t1,
                            ),
                          ),
                        ),
                      ),
                      //Customer Address
                      Align(
                        alignment: Alignment(-0.85, 0.3),
                        child: Text(
                          "Customer Address",
                          style: TextStyle(
                            fontFamily: 'Montserrat',
                            fontSize: 14.0,
                            color: CustomTheme.t2,
                          ),
                        ),
                      ),
                      //address row
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            alignment: Alignment.topLeft,
                            padding: EdgeInsets.all(10),
                            child: Column(children: <Widget>[
                              Text(
                                "13-B, very happy",
                                textAlign: TextAlign.start,
                                style: TextStyle(
                                  fontFamily: 'Montserrat',
                                  fontSize: 18.0,
                                  color: CustomTheme.t1,
                                ),
                              ),
                              Text(
                                "Society, Sector 15",
                                style: TextStyle(
                                  fontFamily: 'Montserrat',
                                  fontSize: 18.0,
                                  color: CustomTheme.t1,
                                ),
                              ),
                              Text(
                                "Thane East, 123413",
                                style: TextStyle(
                                  fontFamily: 'Montserrat',
                                  fontSize: 18.0,
                                  color: CustomTheme.t1,
                                ),
                              ),
                            ]),
                          ),

                          //show on map icon row

                          Container(
                            padding: EdgeInsets.fromLTRB(20, 0, 20, 0),
                            child: Column(
                              children: [
                                Builder(builder: (context) {
                                  return IconButton(
                                    iconSize: 40,
                                    onPressed: () {},
                                    icon: new Icon(Icons.location_on),
                                    color: Color.fromRGBO(114, 204, 80, 1),
                                  );
                                }),
                                Container(
                                  //alignment: Alignment(1, 1),
                                  child: Column(children: <Widget>[
                                    Text(
                                      "show",
                                      textAlign: TextAlign.start,
                                      style: TextStyle(
                                        fontFamily: 'Montserrat',
                                        fontSize: 13.0,
                                        color: Colors.green,
                                      ),
                                    ),
                                    Text(
                                      "on map",
                                      style: TextStyle(
                                        fontFamily: 'Montserrat',
                                        fontSize: 13.0,
                                        color: Colors.green,
                                      ),
                                    ),
                                  ]),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                      //Customer Name
                      Align(
                        alignment: Alignment(-0.85, 0.3),
                        child: Text(
                          "Customer Name",
                          style: TextStyle(
                            fontFamily: 'Montserrat',
                            fontSize: 14.0,
                            color: Colors.grey,
                          ),
                        ),
                      ),

                      //name
                      Container(
                          alignment: Alignment.centerLeft,
                          padding: EdgeInsets.fromLTRB(20, 10, 0, 10),
                          child: Column(
                            children: <Widget>[
                              Text(
                                "Ken Adams",
                                style: TextStyle(
                                  fontFamily: 'Montserrat',
                                  fontSize: 18.0,
                                  color: CustomTheme.t1,
                                ),
                              ),
                            ],
                          )),
                      //Customer no
                      Align(
                        alignment: Alignment(-0.80, 0.3),
                        child: Text(
                          "Customer Phone Number",
                          style: TextStyle(
                            fontFamily: 'Montserrat',
                            fontSize: 14.0,
                            color: CustomTheme.t2,
                          ),
                        ),
                      ),

                      //no
                      Container(
                          alignment: Alignment.centerLeft,
                          padding: EdgeInsets.fromLTRB(20, 10, 0, 10),
                          child: Column(
                            children: <Widget>[
                              Text(
                                "9214532863",
                                style: TextStyle(
                                  fontFamily: 'Montserrat',
                                  fontSize: 18.0,
                                  color: CustomTheme.t1,
                                ),
                              ),
                            ],
                          )),
                      //Order Summary
                      Align(
                        alignment: Alignment(-0.83, 0.3),
                        child: Text(
                          "Order Summary",
                          style: TextStyle(
                            fontFamily: 'Montserrat',
                            fontSize: 14.0,
                            color: CustomTheme.t1,
                          ),
                        ),
                      ),
                      //Item Row1 blabla
                      Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            //dot image1
                            Builder(builder: (context) {
                              return IconButton(
                                iconSize: 20,
                                onPressed: () {},
                                icon: new Icon(Icons.center_focus_strong),
                                color: CustomTheme.t1,
                              );
                            }),
                            //Item name1
                            Container(
                              alignment: Alignment.topLeft,
                              padding: EdgeInsets.all(10),
                              child: Column(children: <Widget>[
                                Text(
                                  "ItemName",
                                  style: TextStyle(
                                    fontFamily: 'Montserrat',
                                    fontSize: 18.0,
                                    color: CustomTheme.t1,
                                  ),
                                ),
                              ]),
                            ),
                            //qty1
                            Container(
                              alignment: Alignment.topLeft,
                              padding: EdgeInsets.fromLTRB(160, 10, 2, 10),
                              child: Column(children: <Widget>[
                                Text(
                                  "x1",
                                  style: TextStyle(
                                    fontFamily: 'Montserrat',
                                    fontSize: 18.0,
                                    color: CustomTheme.darkGreen,
                                  ),
                                ),
                              ]),
                            ),
                          ]),
                      //Rupee300 sizedbox
                      Padding(
                        padding: EdgeInsets.fromLTRB(60, 2, 10, 2),
                        child: Align(
                          alignment: Alignment.topLeft,
                          child: const SizedBox(
                            height: 20,
                            child: Text(
                              "₹25",
                              style: TextStyle(
                                fontFamily: 'Montserrat',
                                fontSize: 17.0,
                                color: Colors.black,
                              ),
                            ),
                          ),
                        ),
                      ),
                      //Item Row2 blabla
                      Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            //dot image2
                            Builder(builder: (context) {
                              return IconButton(
                                iconSize: 20,
                                onPressed: () {},
                                icon: new Icon(Icons.center_focus_strong),
                                color: CustomTheme.t1,
                              );
                            }),
                            //Item name2
                            Container(
                              alignment: Alignment.topLeft,
                              padding: EdgeInsets.all(10),
                              child: Column(children: <Widget>[
                                Text(
                                  "ItemName",
                                  style: TextStyle(
                                    fontFamily: 'Montserrat',
                                    fontSize: 18.0,
                                    color: CustomTheme.t1,
                                  ),
                                ),
                              ]),
                            ),
                            //qty2
                            Container(
                              alignment: Alignment.topLeft,
                              padding: EdgeInsets.fromLTRB(160, 10, 2, 10),
                              child: Column(children: <Widget>[
                                Text(
                                  "x1",
                                  style: TextStyle(
                                    fontFamily: 'Montserrat',
                                    fontSize: 18.0,
                                    color: CustomTheme.darkGreen,
                                  ),
                                ),
                              ]),
                            ),
                          ]),
                      //rupee300 sized box
                      Padding(
                        padding: const EdgeInsets.fromLTRB(60, 2, 10, 2),
                        child: Align(
                          alignment: Alignment.topLeft,
                          child: const SizedBox(
                            height: 20,
                            child: Text(
                              "₹25",
                              style: TextStyle(
                                fontFamily: 'Montserrat',
                                fontSize: 17.0,
                                color: Colors.black,
                              ),
                            ),
                          ),
                        ),
                      ),
                      //Item Row3 blabla
                      Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            //dot image3
                            Builder(builder: (context) {
                              return IconButton(
                                iconSize: 20,
                                onPressed: () {},
                                icon: new Icon(Icons.center_focus_strong),
                                color: CustomTheme.t1,
                              );
                            }),
                            //Item name3
                            Container(
                              alignment: Alignment.topLeft,
                              padding: EdgeInsets.all(10),
                              child: Column(children: <Widget>[
                                Text(
                                  "ItemName",
                                  style: TextStyle(
                                    fontFamily: 'Montserrat',
                                    fontSize: 18.0,
                                    color: CustomTheme.t1,
                                  ),
                                ),
                              ]),
                            ),
                            //qty3
                            Container(
                              alignment: Alignment.topRight,
                              padding: EdgeInsets.fromLTRB(160, 10, 2, 10),
                              child: Column(children: <Widget>[
                                Text(
                                  "x1",
                                  style: TextStyle(
                                    fontFamily: 'Montserrat',
                                    fontSize: 18.0,
                                    color: CustomTheme.darkGreen,
                                  ),
                                ),
                              ]),
                            ),
                          ]),
                      //rupee300 sizedbox
                      Padding(
                        padding: const EdgeInsets.fromLTRB(60, 2, 10, 2),
                        child: Align(
                          alignment: Alignment.topLeft,
                          child: const SizedBox(
                            height: 20,
                            child: Text(
                              "₹50",
                              style: TextStyle(
                                fontFamily: 'Montserrat',
                                fontSize: 17.0,
                                color: Colors.black,
                              ),
                            ),
                          ),
                        ),
                      ),

                      //dashed seperator
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: DottedLine(
                          direction: Axis.horizontal,
                          lineLength: 325,
                          dashLength: 6,
                          dashGapLength: 6,
                          lineThickness: 1,
                        ),
                      ),

                      //totalRow
                      Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            //Total
                            Container(
                              alignment: Alignment.topLeft,
                              padding: EdgeInsets.fromLTRB(20, 10, 2, 2),
                              child: Column(children: <Widget>[
                                Text(
                                  "Total",
                                  style: TextStyle(
                                    fontFamily: 'Montserrat',
                                    fontSize: 18.0,
                                    color: Colors.black,
                                  ),
                                ),
                              ]),
                            ),
                            //total
                            Container(
                              alignment: Alignment.topLeft,
                              padding: EdgeInsets.fromLTRB(160, 10, 2, 10),
                              child: Column(children: <Widget>[
                                Text(
                                  "₹100",
                                  style: TextStyle(
                                    fontFamily: 'Montserrat',
                                    fontSize: 18.0,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.black,
                                  ),
                                ),
                              ]),
                            ),
                          ]),
                      //seperator
                      const Divider(
                        height: 20,
                        thickness: 1,
                        indent: 20,
                        endIndent: 20,
                        color: Colors.black,
                      ),

                      //sizedbox
                      SizedBox(
                        height: 10,
                      ),
                      //Button
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          // //Reject
                          // SizedBox(height: 5),
                          // ElevatedButton(
                          //   style: ElevatedButton.styleFrom(
                          //     backgroundColor: Color.fromRGBO(252, 76, 60, 1),
                          //     //primary: CustomTheme.accent,
                          //     padding: EdgeInsets.symmetric(
                          //       horizontal: 29,
                          //       vertical: 10,
                          //     ),
                          //     shape: RoundedRectangleBorder(
                          //       borderRadius: BorderRadius.circular(10),
                          //     ),
                          //   ),
                          //   child: Padding(
                          //     padding: EdgeInsets.all(8.0),
                          //     child: Text(
                          //       '✕ Reject',
                          //       style: TextStyle(
                          //         fontSize: 16,
                          //         color: Colors.white,
                          //       ),
                          //     ),
                          //   ),
                          //   onPressed: () async {},
                          // ),
                          // SizedBox(height: 5),

                          //Accept(in this case rejected)
                          SizedBox(height: 5),
                          ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              backgroundColor: CustomTheme.red,
                              //primary: CustomTheme.accent,
                              padding: EdgeInsets.symmetric(
                                horizontal: 29,
                                vertical: 10,
                              ),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10),
                              ),
                            ),
                            child: Padding(
                              padding: EdgeInsets.all(8.0),
                              child: Text(
                                '✕ Rejected',
                                style: TextStyle(
                                  fontSize: 16,
                                  color: Colors.white,
                                ),
                              ),
                            ),
                            onPressed: () async {},
                          ),
                        ],
                      ),

                      //hide order summary
                      Column(
                        children: [
                          Padding(
                            padding: EdgeInsets.fromLTRB(60, 20, 10, 2),
                            child: Align(
                              alignment: Alignment.topRight,
                              child: const SizedBox(
                                height: 20,
                                child: Text(
                                  "Hide Order Summary  ▲",
                                  style: TextStyle(
                                    fontFamily: 'Montserrat',
                                    fontSize: 16.0,
                                    color: Color.fromRGBO(114, 204, 80, 1),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                )
              ],
            ),
          ],
        ),
      );

  //Sidebar
  Widget Sidebar({
    required String text,
    required IconData icon,
    VoidCallback? onClicked,
  }) {
    final color = Colors.green;
    final hoverColor = Colors.white70;
    return ListTile(
      leading: Icon(
        icon,
        color: color,
        size: 30,
      ),
      title: Text(text,
          style:
              TextStyle(fontFamily: 'Montserrat', fontSize: 16, color: color)),
      hoverColor: hoverColor,
      onTap: onClicked,
    );
  }

  selectedItem(BuildContext context, int index) {
    Navigator.of(context).pop();
    switch (index) {
      case 0:
        Navigator.of(context).push(MaterialPageRoute(
          builder: (context) => HomeScreen(),
        ));
        break;
      case 1:
        Navigator.of(context).push(MaterialPageRoute(
          builder: (context) => EditMenu(),
        ));
        break;
      case 2:
        Navigator.of(context).push(MaterialPageRoute(
          builder: (context) => PreviousOrders(),
        ));
        break;
      case 3:
        Navigator.of(context).push(MaterialPageRoute(
          builder: (context) => deliveryRegistrationScreen(),
        ));
        break;
    }
  }
}
