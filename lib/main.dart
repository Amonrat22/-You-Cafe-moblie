import 'package:flutter/material.dart';
import 'CafeNearMe.dart';
import 'CafeNoted.dart';
import 'NewsCafe.dart';
import 'Style.dart';
import 'TegData.dart';
// ignore: unused_import
import 'detail/detailPage.dart';
import 'detail/listPage1.dart';
import 'detail/listPage2.dart';
import 'detail/listPage3.dart';
import 'detail/listPage4.dart';
import 'detail/listPage5.dart';
// ignore: unused_import
import 'package:google_nav_bar/google_nav_bar.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'You Cafe',
      theme: ThemeData(
        fontFamily: 'mont',
      ),
      home: MyHomePage(title: 'You Cafe'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _selectedIndex = 0;

  // ignore: unused_field
  List<Widget> _widgetOptions = <Widget>[
    MyApp(),
    Home(),
    CafeNear(),
    listPage1(),
  ];

  void _onItemTap(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  get child => null;

  get detail => null;

  get demoIndex => null;

  @override
  Widget build(BuildContext context) {
    var iconButton3 = IconButton(
      icon: Icon(Icons.search),
      color: Colors.white,
      onPressed: () {
        Navigator.push(context, MaterialPageRoute(builder: (context) {
          return Home();
        }));
      },
    );

    // ignore: unused_label
    drawer:
    Drawer();

    var iconButton2 = iconButton3;
    var iconButton = iconButton2;

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.orangeAccent,
        elevation: 0,
        leading: Icon(Icons.local_cafe),
        title: Text(
          'You Cafe',
          textAlign: TextAlign.center,
        ),
        centerTitle: true,
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            padding: EdgeInsets.symmetric(horizontal: 15),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: 10,
                ),
                //???????????????????????????
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      child: Column(
                        children: [
                          //?????????????????????????????????
                          Container(
                            padding: EdgeInsets.symmetric(
                                horizontal: 173, vertical: 2),
                            decoration: BoxDecoration(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(8)),
                                color: cream),
                            child: Center(
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  iconButton,
                                  Text(
                                    " ??????????????????????????????????????????",
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 14,
                                        fontWeight: FontWeight.w700),
                                  )
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                SingleChildScrollView(
                  padding: EdgeInsets.only(bottom: 20),
                  scrollDirection: Axis.horizontal,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: <Widget>[
                      //?????????????????????????????????????????????
                      Container(
                        width: 470,
                        height: 150,
                        padding:
                            EdgeInsets.symmetric(vertical: 20, horizontal: 40),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.all(Radius.circular(8)),
                            color: brown,
                            image: DecorationImage(
                                image:
                                    AssetImage("asset/images/BlancCafe-7.jpg"),
                                fit: BoxFit.cover)),
                        child: Column(
                          children: [
                            SizedBox(
                              height: 15,
                            ),
                            Text(
                              "?????????????????????????????????????????????",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 16,
                                  fontWeight: FontWeight.w700),
                            ),

                            SizedBox(
                              height: 5,
                            ),
                            Text(
                              "????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????",
                              style:
                                  TextStyle(color: Colors.white, fontSize: 13),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            // ignore: deprecated_member_use
                            FlatButton(
                              color: Colors.amberAccent[100],
                              child: Text("Click"),
                              onPressed: () => navigateToCafeNear(context),
                            )
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Row(
                        children: <Widget>[
                          Container(
                            width: MediaQuery.of(context).size.width * 0.46,
                            height: 150,
                            padding: EdgeInsets.symmetric(
                                vertical: 20, horizontal: 20),
                            decoration: BoxDecoration(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(8)),
                                color: orenge,
                                image: DecorationImage(
                                    image: AssetImage(
                                        "asset/images/duaad_vzd2upljyxtxgc8_ksgtmfqzhbfqmo_gzxqwa.jpg"),
                                    fit: BoxFit.cover)),
                            //???????????????????????????????????????
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Expanded(
                                  child: Container(
                                    decoration: BoxDecoration(),
                                  ),
                                ),
                                SizedBox(
                                  height: 15,
                                ),
                                Text(
                                  "???????????????????????????????????????",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 16,
                                      fontWeight: FontWeight.w700),
                                ),
                                SizedBox(
                                  height: 5,
                                ),

                                SizedBox(
                                  height: 5,
                                ),
                                // ignore: deprecated_member_use
                                FlatButton(
                                  color: Colors.amberAccent[100],
                                  child: Text("Click"),
                                  onPressed: () => navigateToNewsCafe(context),
                                )
                              ],
                            ),
                          ),
                          SizedBox(
                            width: 5,
                          ),
                          //??????????????????????????????
                          Column(
                            children: [
                              Container(
                                width: MediaQuery.of(context).size.width * 0.46,
                                height: 150,
                                padding: EdgeInsets.symmetric(
                                    vertical: 20, horizontal: 20),
                                decoration: BoxDecoration(
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(8)),
                                    color: black,
                                    image: DecorationImage(
                                        image: AssetImage(
                                            "asset/images/11215697_996603400385828_8646741041720315221_n.jpg"),
                                        fit: BoxFit.cover)),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Expanded(
                                      child: Container(
                                        decoration: BoxDecoration(),
                                      ),
                                    ),
                                    SizedBox(
                                      height: 15,
                                    ),
                                    Text(
                                      "??????????????????????????????",
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 16,
                                          fontWeight: FontWeight.w700),
                                    ),
                                    SizedBox(
                                      height: 5,
                                    ),

                                    SizedBox(
                                      height: 5,
                                    ),
                                    // ignore: deprecated_member_use
                                    FlatButton(
                                      color: Colors.amberAccent[100],
                                      child: Text("Click"),
                                      onPressed: () =>
                                          navigateToCafeNoted(context),
                                    )
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                //????????????????????????????????????
                Row(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Text(
                      "????????????????????????????????????",
                      style:
                          TextStyle(fontSize: 22, fontWeight: FontWeight.w700),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Expanded(
                      child: Container(
                        margin: EdgeInsets.symmetric(horizontal: 20),
                        height: 0.5,
                        color: Colors.grey,
                      ),
                    )
                  ],
                ),

                SizedBox(
                  height: 5,
                ),
                Row(children: [
                  Container(
                    height: 100,
                    width: 100,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(8)),
                        image: DecorationImage(
                            image: AssetImage(
                                "asset/images/????????????????????????????????????-???????????????1.jpg"),
                            fit: BoxFit.cover)),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "?????????????????????????????? 989/1 coffee ???????????????",
                          style: TextStyle(
                              fontSize: 16, fontWeight: FontWeight.w600),
                        ),

                        //??????????????????????????????????????????????????????????????????????????????????????????
                        Text(
                          "????????????????????????????????????????????????????????? ????????????????????????????????????????????????????????????????????????????????????????????? ?????????????????????????????????????????????????????????????????????????????????????????????",
                          style: TextStyle(fontSize: 12),
                        ),
                      ],
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      //????????????????????????????????????????????????????????? DetailPage
                      Navigator.push(context, MaterialPageRoute(
                        builder: (BuildContext context) {
                          return listPage1();
                        },
                      ));
                    },
                    child: Container(
                      padding:
                          EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(40)),
                          color: cream),
                      child: Text(
                        "Read Now",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 12,
                            fontWeight: FontWeight.w700),
                      ),
                    ),
                  ),
                ]),
                SizedBox(
                  height: 5,
                ),

                Row(children: [
                  Container(
                    height: 100,
                    width: 100,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(8)),
                        image: DecorationImage(
                            image: AssetImage(
                                "asset/images/????????????????????????????????????-???????????????2 (1).jpg"),
                            fit: BoxFit.cover)),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Magic Mountain Cafe???",
                          style: TextStyle(
                              fontSize: 16, fontWeight: FontWeight.w600),
                        ),

                        //??????????????????????????????????????????????????????????????????????????????????????????
                        Text(
                          "?????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????? Magic Mountain Cafe???",
                          style: TextStyle(fontSize: 12),
                        ),
                      ],
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      //????????????????????????????????????????????????????????? DetailPage
                      Navigator.push(context, MaterialPageRoute(
                        builder: (BuildContext context) {
                          return listPage2();
                        },
                      ));
                    },
                    child: Container(
                      padding:
                          EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(40)),
                          color: cream),
                      child: Text(
                        "Read Now",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 12,
                            fontWeight: FontWeight.w700),
                      ),
                    ),
                  ),
                ]),
                SizedBox(
                  height: 5,
                ),

                Row(children: [
                  Container(
                    height: 100,
                    width: 100,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(8)),
                        image: DecorationImage(
                            image: AssetImage(
                                "asset/images/????????????????????????????????????-???????????????6.jpg"),
                            fit: BoxFit.cover)),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "???????????????????????????????????? Bar & Cafe???",
                          style: TextStyle(
                              fontSize: 16, fontWeight: FontWeight.w600),
                        ),

                        //??????????????????????????????????????????????????????????????????????????????????????????
                        Text(
                          "?????????????????????????????????????????????????????????????????????????????????????????? ???????????????????????????????????????????????????????????????????????????????????????????????????????????? ??????????????????????????????????????????????????????????????????????????????????????????",
                          style: TextStyle(fontSize: 12),
                        ),
                      ],
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      //????????????????????????????????????????????????????????? DetailPage
                      Navigator.push(context, MaterialPageRoute(
                        builder: (BuildContext context) {
                          return listPage3();
                        },
                      ));
                    },
                    child: Container(
                      padding:
                          EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(40)),
                          color: cream),
                      child: Text(
                        "Read Now",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 12,
                            fontWeight: FontWeight.w700),
                      ),
                    ),
                  ),
                ]),
                SizedBox(
                  height: 5,
                ),

                Row(children: [
                  Container(
                    height: 100,
                    width: 100,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(8)),
                        image: DecorationImage(
                            image: AssetImage(
                                "asset/images/Homework3-768x575.jpg"),
                            fit: BoxFit.cover)),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "??????????????????????????? ??????????????? (HomeWork Cafe)",
                          style: TextStyle(
                              fontSize: 16, fontWeight: FontWeight.w600),
                        ),

                        //??????????????????????????????????????????????????????????????????????????????????????????
                        Text(
                          "?????????????????????????????????????????? ????????????????????????????????????????????????????????????????????????????????????????????? ????????????????????????????????????????????????????????? ?????? ???????????? ??????????????????????????????????????????????????? ???????????????????????????????????????????????????????????????????????????????????????",
                          style: TextStyle(fontSize: 12),
                        ),
                      ],
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      //????????????????????????????????????????????????????????? DetailPage
                      Navigator.push(context, MaterialPageRoute(
                        builder: (BuildContext context) {
                          return listPage4();
                        },
                      ));
                    },
                    child: Container(
                      padding:
                          EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(40)),
                          color: cream),
                      child: Text(
                        "Read Now",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 12,
                            fontWeight: FontWeight.w700),
                      ),
                    ),
                  ),
                ]),
                SizedBox(
                  height: 5,
                ),

                Row(children: [
                  Container(
                    height: 100,
                    width: 100,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(8)),
                        image: DecorationImage(
                            image:
                                AssetImage("asset/images/addmore1-768x512.jpg"),
                            fit: BoxFit.cover)),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Add More Cafe",
                          style: TextStyle(
                              fontSize: 16, fontWeight: FontWeight.w600),
                        ),

                        //??????????????????????????????????????????????????????????????????????????????????????????
                        Text(
                          "????????????????????????????????? ?????????????????????????????? ??????????????????????????????????????????????????????????????? ??????????????????????????????????????????????????????????????? ????????????????????????????????????????????????",
                          style: TextStyle(fontSize: 12),
                        ),
                      ],
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      //????????????????????????????????????????????????????????? DetailPage
                      Navigator.push(context, MaterialPageRoute(
                        builder: (BuildContext context) {
                          return listPage5();
                        },
                      ));
                    },
                    child: Container(
                      padding:
                          EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(40)),
                          color: cream),
                      child: Text(
                        "Read Now",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 12,
                            fontWeight: FontWeight.w700),
                      ),
                    ),
                  ),
                ]),
                SizedBox(
                  height: 5,
                ),
              ],
            ),
          ),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        showSelectedLabels: false,
        showUnselectedLabels: false,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(
              Icons.home,
              color: Colors.grey,
            ),
            label: 'home',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.search,
              color: Colors.grey,
            ),
            label: 'search',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.bookmark,
              color: Colors.grey,
            ),
            label: 'bookmark',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.person,
              color: Colors.grey,
            ),
            label: 'Profild',
          ),
        ],
        currentIndex: _selectedIndex,
        backgroundColor: Colors.orangeAccent,
        selectedItemColor: Colors.amber[800],
        onTap: _onItemTap,
      ),
    );

    // ignore: dead_code
  }

  navigateToCafeNear(BuildContext context) {
    Navigator.push(context, MaterialPageRoute(builder: (context) {
      return CafeNear();
    }));
  }

  navigateToNewsCafe(BuildContext context) {
    Navigator.push(context, MaterialPageRoute(builder: (context) {
      return NewsCafe();
    }));
  }

  navigateToCafeNoted(BuildContext context) {
    Navigator.push(context, MaterialPageRoute(builder: (context) {
      return CafeNoted();
    }));
  }

  void get color => color;

  void openHotelPage1() {
    Navigator.push(
        context, MaterialPageRoute(builder: (context) => listPage1()));
  }

  void openHotelPage2() {
    Navigator.push(
        context, MaterialPageRoute(builder: (context) => listPage2()));
  }

  void openHotelPage3() {
    Navigator.push(
        context, MaterialPageRoute(builder: (context) => listPage3()));
  }

  void openHotelPage4() {
    Navigator.push(
        context, MaterialPageRoute(builder: (context) => listPage4()));
  }

  void openHotelPage5() {
    Navigator.push(
        context, MaterialPageRoute(builder: (context) => listPage5()));
  }
}
