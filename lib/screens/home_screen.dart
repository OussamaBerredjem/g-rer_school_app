import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:pfe/models/main_screen.dart';
import 'package:pfe/models/profile_screen.dart';
import 'package:pfe/screens/login_screen.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {

  int index =0;

  var mounth = [
    "def","Janvier","Fevrier","Mars","Avril","May","Juin","Juil","August","Septembre","Octobre","Novombre","December"
  ];

  var pages = [MainScreen(),Profile()];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Text(index==0?"Welcome Back !":"Profile",style: TextStyle(fontWeight: FontWeight.bold),),//Text(DateTime.now().day.toString() + " "+mounth[DateTime.now().month]+" "+DateTime.now().year.toString()),
        actions: index==0?[]:[
          IconButton(onPressed: (){
            Navigator.pushReplacement(context, CupertinoPageRoute(builder: (context)=>Login()));
          }, icon: Icon(Icons.logout))
        ],
      ),
      body: AnimatedSwitcher(duration: Duration(milliseconds: 500),child: pages[index]),
      bottomNavigationBar: BottomNavigationBar(
        fixedColor: Colors.blue,
        currentIndex: index,
        onTap: (poition){
          setState(() {
            index = poition;
          });
        },
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home_filled),tooltip: "Home",label: "Home"),
          BottomNavigationBarItem(icon: Icon(Icons.person),tooltip: "Profile",label: "Profile"),
        ],

      ),
    );
  }
}
