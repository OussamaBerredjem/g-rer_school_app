import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:pfe/models/main_screen.dart';
import 'package:pfe/models/profile_screen.dart';
import 'package:pfe/screens/login_screen.dart';
import 'package:awesome_notifications/awesome_notifications.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {

  int index =0;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _initializeNotifications();
  }

  var mounth = [
    "def","Janvier","Fevrier","Mars","Avril","May","Juin","Juil","August","Septembre","Octobre","Novombre","December"
  ];

  Future<void> _initializeNotifications() async {
    AwesomeNotifications().initialize(
      null,
      [
        NotificationChannel(
          channelKey: 'news',
          channelName: 'News Channel',
          channelDescription: 'Channel for news notifications',
          defaultColor: Colors.teal,
          ledColor: Colors.teal,
        ),
      ],
    );
  }


  var pages = [MainScreen(),Profile()];
  Future<void> _showNotification() async {
    await AwesomeNotifications().createNotification(
      content: NotificationContent(
        id: 9,
        channelKey: 'news',
        title: 'New Notification',
        body: 'This is a test notification',
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Text(index==0?"Welcome Back !":"Profile",style: TextStyle(fontWeight: FontWeight.bold),),//Text(DateTime.now().day.toString() + " "+mounth[DateTime.now().month]+" "+DateTime.now().year.toString()),
        actions: index==0?[
          IconButton(onPressed: () async{

            await _showNotification();

          }, icon: Icon(Icons.notifications,color: Colors.grey,))
        ]:[
          IconButton(onPressed: (){
            Navigator.pushReplacement(context, CupertinoPageRoute(builder: (context)=>Login()));
          }, icon: Icon(Icons.logout,color: Colors.grey,))
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
