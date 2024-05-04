import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:pfe/screens/home_screen.dart';

class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.topRight,
              colors: [
                Colors.blue,

                Colors.blueAccent,
                Color(0xFF283593)

              ])
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
                padding: EdgeInsets.only(top: 50,left: 20),
                child: Text("Login",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 34,color: Colors.white),),
            ),
            Padding(
                padding: EdgeInsets.only(left: 20),
                child: Text("Welcome Back",style: TextStyle(color: Colors.white),),
            ),
            Expanded(
              flex: 7,
              child: Container(
                margin: EdgeInsets.only(top: 20),
                padding: EdgeInsets.symmetric(horizontal: 40,vertical: 60),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(topLeft: Radius.circular(42),topRight: Radius.circular(42)),
                ),
                child: Column(

                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      decoration:BoxDecoration(
                        color: Colors.white,
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.2), // Shadow color
                            spreadRadius: 3, // Spread radius
                            blurRadius: 3, // Blur radius
                            offset: Offset(0, -3), // Offset of the shadow
                          ),
                        ]
                      ),
                      child: TextField(
                        decoration: InputDecoration(
                          contentPadding: EdgeInsets.only(left: 15),
                          border: InputBorder.none,
                          hintText: 'Email or Phone number'
                        ),
                      ),
                    ),
                    Container(
                          decoration:BoxDecoration(
                          color: Colors.white,
                          boxShadow: [
                          BoxShadow(
                          color: Colors.grey.withOpacity(0.2), // Shadow color
                          spreadRadius: 3, // Spread radius
                          blurRadius: 3, // Blur radius
                          offset: Offset(0, 3), // Offset of the shadow
                          ),
                          ]
                          ),
                          child:TextField(
                            obscureText: true,
                            decoration: InputDecoration(
                              contentPadding: EdgeInsets.only(left: 15),
                              border: InputBorder.none,
                              hintText: 'Password'
                            ),
                          ),),
                    SizedBox(height: 40,),
                    ElevatedButton(onPressed: (){
                      Navigator.pushReplacement(context, CupertinoPageRoute(builder: (context)=>Home()));
                    }, child: Text('Login',style: TextStyle(color: Colors.white),),style: ButtonStyle(backgroundColor: MaterialStateColor.resolveWith((states) => Colors.blue),minimumSize: MaterialStateProperty.all<Size>(Size(300, 45))),)
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
