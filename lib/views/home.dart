// ignore_for_file: prefer_const_constructors_in_immutables, prefer_const_constructors, non_constant_identifier_names, prefer_const_literals_to_create_immutables
import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:flutter_application/views/loginPage.dart';
import 'package:flutter_application/widgets/card.dart';

//import 'package:flutter_application/views/home.dart';
class Home extends StatefulWidget {
  Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int Schdata = 0;
  List<String> list = ["You'll never be brave if you dont get hurt."];
  List<String> list2 = [
    "Karama says ... Once the heart get too heavy with pain, people do not cry. they just turn silent."
  ];
  List<String> list3 = [
    "Dream Big, but start small. Work Hard, but don't worry...Enjoy the journey,Be patient with your self, as God is patient with you"
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[900],
      drawer: Drawer(
        backgroundColor: Colors.grey[850],
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            DrawerHeader(
              decoration: BoxDecoration(color: Colors.amberAccent[200]),
              child: Text('Drawer Header'),
            ),
            ListTile(
              title: Text(
                'item 1',
                style: TextStyle(color: Colors.amberAccent),
              ),
            ),
            ListTile(
              title: Text(
                'item 2',
                style: TextStyle(color: Colors.amberAccent),
              ),
            ),
            ListTile(
              title: Text(
                'item 3',
                style: TextStyle(color: Colors.amberAccent),
              ),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: Text(
                'item 4',
                style: TextStyle(color: Colors.amberAccent),
              ),
            ),
          ],
        ),
      ),
      appBar: AppBar(
        actions: [
          IconButton(
            onPressed: () {
              Navigator.push(
                  context,
                  PageRouteBuilder(
                      transitionDuration: Duration(seconds: 2),
                      transitionsBuilder: (BuildContext context,
                          Animation<double> animation,
                          Animation<double> secAnimation,
                          Widget child) {
                        animation = CurvedAnimation(
                            parent: animation, curve: Curves.easeInToLinear);

                        return ScaleTransition(
                          alignment: Alignment.center,
                          scale: animation,
                          child: child,
                        );
                      },
                      pageBuilder: (BuildContext context,
                          Animation<double> animation,
                          Animation<double> secAnimation) {
                        return LoginPage();
                      }));
            },
            icon: Icon(Icons.account_box),
          )
        ],
        elevation: 0.0,
        title: Text(
          'my fisrt app',
          style: TextStyle(
            color: Colors.amberAccent,
            fontSize: 20.0,
          ),
        ),
        centerTitle: true,
        backgroundColor: Colors.grey[850],
      ),
      body: Padding(
          padding: EdgeInsets.fromLTRB(30.0, 40.0, 30.0, 0.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Center(
                child: CircleAvatar(
                  backgroundImage: AssetImage('assets/mi.jpg'),
                  radius: 55,
                ),
              ),
              Divider(
                height: 65,
                color: Colors.grey[100],
              ),
              Text(
                'Name',
                style: TextStyle(
                  color: Colors.grey,
                  letterSpacing: 2.0,
                ),
              ),
              SizedBox(height: 10),
              Text(
                'Micheal',
                style: TextStyle(
                  color: Colors.amberAccent[200],
                  fontSize: 28.0,
                  fontWeight: FontWeight.bold,
                  letterSpacing: 2.0,
                ),
              ),
              SizedBox(height: 30),
              Text(
                'School Level',
                style: TextStyle(
                  color: Colors.grey,
                  letterSpacing: 2.0,
                ),
              ),
              Text(
                '$Schdata',
                style: TextStyle(
                  color: Colors.amberAccent[200],
                  fontSize: 28.0,
                  fontWeight: FontWeight.bold,
                  letterSpacing: 2.0,
                ),
              ),
              SizedBox(height: 30),
              Row(
                children: [
                  Icon(
                    Icons.email,
                    color: Colors.grey[400],
                  ),
                  SizedBox(width: 10),
                  Text(
                    'michealinnocent146@gmail.com',
                    style: TextStyle(
                      color: Colors.grey[400],
                      letterSpacing: 2.0,
                      fontSize: 18.0,
                    ),
                  ),
                ],
              ),
              Divider(
                height: 25,
                color: Colors.grey[100],
              ),
              Text(
                '$list',
                style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                    color: Colors.amberAccent[200]),
              ),
              Divider(
                height: 25,
                color: Colors.grey[100],
              ),
              Text(
                '$list2',
                style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                    color: Colors.amberAccent[200]),
              ),
              Divider(
                height: 25,
                color: Colors.grey[100],
              ),
              Text(
                ' $list3',
                style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                    color: Colors.amberAccent[200]),
              )
            ],
          )),
      bottomNavigationBar: BottomNavigationBar(
        onTap: (value) {},
        backgroundColor: Colors.grey[850],
        type: BottomNavigationBarType.fixed,
        items: const [
          BottomNavigationBarItem(
              icon: Icon(
                Icons.home,
                size: 20.0,
              ),
              label: 'Home'),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.settings,
                size: 20.0,
              ),
              label: 'Settings'),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.people,
                size: 20.0,
              ),
              label: 'account'),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            Schdata += 100;
          });
        },
        child: Icon(Icons.add),
        tooltip: 'pressed',
        backgroundColor: Colors.grey[800],
      ),
    );
  }
}
