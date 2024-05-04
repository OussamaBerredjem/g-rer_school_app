import 'package:flutter/material.dart';

class CustomCard extends StatelessWidget {
  String name,date,service;
  CustomCard({required this.name,required this.date,required this.service});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 5,horizontal: 20),
      margin: EdgeInsets.only(top: 5,left: 5,right: 5),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        color: Colors.blue,
      ),
      child:Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("Dr "+name,style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold,color: Colors.white),),
            Text("Service : "+service,style: TextStyle(color: Colors.white),),
            Text("Date : "+date,style: TextStyle(color: Colors.white))
          ],
        ),

    );
  }
}
