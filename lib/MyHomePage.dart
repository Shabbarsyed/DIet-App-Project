import 'package:flutter/cupertino.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  String currentDate = DateFormat('yyyy-MM-dd').format(DateTime.now());
  int _selectedIndex = 0;
  static const TextStyle optionStyle =
  TextStyle(fontSize: 30, fontWeight: FontWeight.bold);
  static const List<Widget> _widgetOptions = <Widget>[
    Text(
      'Index 0: Diary',
      style: optionStyle,
    ),
    Text(
      'Index 1: Progress',
      style: optionStyle,
    ),
    Text(
      'Index 2: ',
      style: optionStyle,
    ),
    Text(
      'Index 3: Diet',
      style: optionStyle,
    ),
    Text(
      'Index 4: Recipes',
      style: optionStyle,
    ),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return Scaffold(
        // backgroundColor: Color.fromRGBO(47,110,182, 100),
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: Colors.blue,
          // Here we take the value from the MyHomePage object that was created by
          // the App.build method, and use it to set our appbar title.
          title: Text(widget.title),
          actions: <Widget>[
            IconButton(
                icon: Icon(
                  Icons.person,
                  color: Colors.white,
                ),
                onPressed: () {
                  // do something
                }),
            IconButton(
                icon: Icon(
                  Icons.notifications_sharp,
                  color: Colors.white,
                ),
                onPressed: () {
                  // do something
                })
          ],
        ),
        body: Container(
          color: Colors.white12,
          // Center is a layout widget. It takes a single child and positions it
          // in the middle of the parent.
          child: Column(
            children: <Widget>[
              SizedBox.fromSize(size: Size.fromHeight(20)),
              Container(
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Column(
                          children: [
                            Text("93",
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  fontSize: 25,
                                )),
                            Text("EATEN",
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  fontSize: 10,
                                )),
                          ],
                        ),
                        SizedBox(width: 50),
                        Container(
                          height: 200,
                          width: 200,
                          child: Column(
                            children: [
                              SizedBox(height: 40),
                              Text(
                                "2661",
                                style:
                                TextStyle(fontSize: 70, color: Colors.white),
                              ),
                              Text(
                                "KCAL LEFT",
                                style: TextStyle(
                                    fontWeight: FontWeight.w600,
                                    color: Colors.white),
                              )
                            ],
                          ),
                          decoration: BoxDecoration(
                            boxShadow: CupertinoContextMenu.kEndBoxShadow,
                            shape: BoxShape.circle,
                            color: Colors.black,
                          ),
                        ),
                        SizedBox(width: 50),
                        Column(
                          children: [
                            Text("93",
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  fontSize: 25,
                                )),
                            Text("Burned",
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  fontSize: 10,
                                )),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              SizedBox.fromSize(size: Size.fromHeight(60)),
              Container(

                decoration: BoxDecoration(
                    color: Colors.tealAccent,
                  borderRadius: BorderRadius.only(topRight: Radius.circular(140),topLeft: Radius.circular(140),
                  )
                ),
                child: Column(
                  children: [
                    SizedBox.fromSize(size: Size.fromHeight(10)),
                    Text("SEE STATE  ↓ "),
                    Container(
                        child: Column(
                          children: [

                          ],
                        )
                    ),
                    Container(
                      margin: EdgeInsets.all(15),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          SizedBox(width: 5),
                          Column(
                            children: [
                              SizedBox(height: 15),
                              Container(
                                child: Text("Carbs",
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontWeight: FontWeight.w700)),
                              ),
                              SizedBox(
                                height: 5,
                              ),
                              Container(
                                child: Container(
                                  height: 10,
                                  width: 20,
                                  decoration: BoxDecoration(
                                    // color: Colors.white,
                                      borderRadius: BorderRadius.circular(20)),
                                ),
                                height: 10,
                                width: 70,
                                decoration: BoxDecoration(
                                  color: Colors.yellow,
                                  borderRadius: BorderRadius.circular(20),
                                  border: Border.all(color: Colors.white10),
                                ),
                              ),
                              SizedBox(height: 5),
                              Text("24/331g",
                                  textAlign: TextAlign.left,
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.w600,
                                      fontSize: 8,
                                      letterSpacing: 0.0000001)),
                            ],
                          ),
                          SizedBox(width: 30),
                          Column(
                            children: [
                              SizedBox(height: 15),
                              Container(
                                child: Text("Protein",
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontWeight: FontWeight.w700)),
                              ),
                              SizedBox(
                                height: 5,
                              ),
                              Container(
                                child: Container(
                                  height: 10,
                                  width: 20,
                                  decoration: BoxDecoration(
                                    // color: Colors.white,
                                      borderRadius: BorderRadius.circular(20)),
                                ),
                                height: 10,
                                width: 70,
                                decoration: BoxDecoration(
                                  color: Colors.blue,
                                  borderRadius: BorderRadius.circular(20),
                                  border: Border.all(color: Colors.white10),
                                ),
                              ),
                              SizedBox(height: 5),
                              Text("24/331g",
                                  textAlign: TextAlign.left,
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.w600,
                                      fontSize: 8,
                                      letterSpacing: 0.0000001)),
                            ],
                          ),
                          SizedBox(width: 30),
                          Column(
                            children: [
                              SizedBox(height: 15),
                              Container(
                                child: Text("Fat",
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontWeight: FontWeight.w700)),
                              ),
                              SizedBox(
                                height: 5,
                              ),
                              Container(
                                child: Container(
                                  height: 10,
                                  width: 20,
                                  decoration: BoxDecoration(
                                    // color: Colors.white,
                                      borderRadius: BorderRadius.circular(20)),
                                ),
                                height: 10,
                                width: 70,
                                decoration: BoxDecoration(
                                  color: Colors.yellow,
                                  borderRadius: BorderRadius.circular(20),
                                  border: Border.all(color: Colors.white10),
                                ),
                              ),
                              SizedBox(height: 5),
                              Text("24/331g",
                                  textAlign: TextAlign.left,
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.w600,
                                    fontSize: 8,
                                  )),
                            ],
                          )
                        ],
                      ),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(20)),
                        boxShadow: CupertinoContextMenu.kEndBoxShadow,
                        color: Colors.black,
                      ),
                      alignment: Alignment.lerp(Alignment.topCenter,
                          Alignment.topRight, BorderSide.strokeAlignCenter),
                      transformAlignment: Alignment.center,
                      height: 80,
                      width: 380,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Text(
                          '<',
                        ),
                        SizedBox(width: 100),
                        Icon(
                          Icons.calendar_month,
                          size: 15,
                          color: Colors.black87,
                        ),
                        Text(
                          '$currentDate',
                          style: Theme.of(context).textTheme.bodySmall,
                          strutStyle: StrutStyle(fontWeight: FontWeight.w600),
                        ),
                        SizedBox(width: 100),
                        Text(
                          '>',
                        ),
                      ],
                    ),
                    SizedBox(height: 10),
                    SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Column(
                        children: [
                          Container(
                            height: 120,
                            width: 380,
                            child: Column(
                              // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Row(
                                  children: [
                                    SizedBox(
                                      width: 30,
                                      height: 90,
                                    ),
                                    Icon(
                                      Icons.fastfood_rounded,
                                      color: Colors.white,
                                      size: 50,
                                    ),
                                    Column(
                                      children: [
                                        SizedBox(height: 10),
                                        SizedBox(width: 120),
                                        const Text(
                                          "Breakfast",
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontWeight: FontWeight.w500,
                                              fontSize: 18,
                                              letterSpacing: 0.0000001),
                                        ),
                                        SizedBox(height: 5),
                                        const Text(
                                          "Banana",
                                          style: TextStyle(
                                            color: Colors.white,
                                            fontWeight: FontWeight.w500,
                                            fontSize: 10,
                                          ),
                                        )
                                      ],
                                    ),
                                    SizedBox(width: 90, height: 100),
                                    Container(
                                      height: 40,
                                      width: 40,
                                      child: Center(
                                        child: Icon(
                                          Icons.add,
                                          color: Colors.black,
                                        ),
                                      ),
                                      decoration: BoxDecoration(
                                          borderRadius: BorderRadius.circular(30),
                                          color: Colors.white),
                                    ),
                                  ],
                                ),
                                Container(
                                  height: 20,
                                  width: 380,
                                  child: Text(
                                    "255  kcl",
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontWeight: FontWeight.w600),
                                  ),
                                  // decoration: BoxDecoration(
                                  //   borderRadius: BorderRadius.only(bottomLeft:Radius.circular(15),bottomRight: Radius.circular(15))
                                  // ),
                                ),
                              ],
                            ),
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.all(Radius.circular(20)),
                                color: Colors.black),
                          ),
                          SizedBox(height: 10),
                          Container(
                            height: 120,
                            width: 380,
                            child: Column(
                              // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Row(
                                  children: [
                                    SizedBox(
                                      width: 30,
                                      height: 90,
                                    ),
                                    Icon(
                                      Icons.fastfood_rounded,
                                      color: Colors.white,
                                      size: 50,
                                    ),
                                    Column(
                                      children: [
                                        SizedBox(height: 10),
                                        SizedBox(width: 120),
                                        const Text(
                                          "Breakfast",
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontWeight: FontWeight.w500,
                                              fontSize: 18,
                                              letterSpacing: 0.0000001),
                                        ),
                                        SizedBox(height: 5),
                                        const Text(
                                          "Banana",
                                          style: TextStyle(
                                            color: Colors.white,
                                            fontWeight: FontWeight.w500,
                                            fontSize: 10,
                                          ),
                                        )
                                      ],
                                    ),
                                    SizedBox(width: 90, height: 100),
                                    Container(
                                      height: 40,
                                      width: 40,
                                      child: Center(
                                        child: Icon(
                                          Icons.add,
                                          color: Colors.black,
                                        ),
                                      ),
                                      decoration: BoxDecoration(
                                          borderRadius: BorderRadius.circular(30),
                                          color: Colors.white),
                                    ),
                                  ],
                                ),
                                Container(
                                  height: 20,
                                  width: 380,
                                  child: Text(
                                    "255  kcl",
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontWeight: FontWeight.w600),
                                  ),
                                  // decoration: BoxDecoration(
                                  //   borderRadius: BorderRadius.only(bottomLeft:Radius.circular(15),bottomRight: Radius.circular(15))
                                  // ),
                                ),
                              ],
                            ),
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.all(Radius.circular(20)),
                                color: Colors.black),
                          ),
                          SizedBox(height: 35,)
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      bottomNavigationBar: BottomNavigationBar(
        type:BottomNavigationBarType.shifting,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.book),
            label: 'Diary',
            backgroundColor: Colors.blue
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.analytics_rounded),
            label: 'Progress',
              backgroundColor: Colors.blue
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.add_circle),
            label: 'Add',
              backgroundColor: Colors.blue
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.apple_outlined),
            label: 'Diet',
              backgroundColor: Colors.blue
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.real_estate_agent_outlined),
            label: 'Recipes',
              backgroundColor: Colors.blue
          ),

        ],

        currentIndex: _selectedIndex,
        selectedItemColor: Colors.yellow,
        onTap: _onItemTapped,
      ),
        // bottomNavigationBar: Row(
        //   children: [
        //     Container(
        //       width: 411,
        //       height: 70,
        //       decoration: BoxDecoration(color: Colors.black),
        //       child: Column(
        //         children: [
        //           Icon(
        //             Icons.book,
        //             color: Colors.white,
        //           ),
        //           Text()
        //         ],
        //       ),
        //     )
        //   ],
        // )

        // This trailing comma makes auto-formatting nicer for build methods.
        );
  }
}
