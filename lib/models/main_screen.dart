import 'package:easy_date_timeline/easy_date_timeline.dart';
import 'package:flutter/material.dart';
import 'package:pfe/models/card_widget.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {

  final EasyInfiniteDateTimelineController _controller = EasyInfiniteDateTimelineController();
  var today = DateTime.now();

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [

        EasyInfiniteDateTimeLine(
          activeColor: Colors.blue,

          controller: _controller,
          firstDate: DateTime(2024,5,1),
          focusDate: today,
          lastDate: DateTime(DateTime.now().year,DateTime.december,31),
          disabledDates: [

          ],

          onDateChange: (selectedDate) {
            setState(() {
              today = selectedDate;
            });
          },
        ),
        Padding(
          padding: const EdgeInsets.only(left: 13,top: 8),
          child: Text("Rendez-vous",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 16),),
        ),
        Expanded(
            flex: 6,
            child: ListView.builder(

                itemCount: 4,
                itemBuilder: (context,position){
                  return CustomCard(name: "Ziane Mounir", date: "22-05-2024 13:30", service: "Chronologie");
                }))
      ],
    );
  }
}
