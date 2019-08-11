import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:scrolling_years_calendar/scrolling_years_calendar.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return CupertinoApp(
      debugShowCheckedModeBanner: false,
      theme: CupertinoThemeData(
        primaryColor: Colors.pink
      ),
      title: 'Cupertino App',
      home: CupertinoPageScaffold(
        navigationBar: CupertinoNavigationBar(
          middle: Text(''),
          trailing: Container(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: <Widget>[
              CupertinoButton(
            onPressed: () {},
            child: Icon(CupertinoIcons.search),
          ),
              CupertinoButton(
            onPressed: () {},
            child: Icon(CupertinoIcons.add),
          ),
            ],),
          )
        ),
        child: Padding(
          padding: const EdgeInsets.only(top: 70.0, left: 10.0),
          child: 
              
              ScrollingYearsCalendar(
                lastDate: DateTime.utc(2050),
                initialDate: DateTime.now(),
                firstDate: DateTime.utc(1999),
                currentDateColor: Colors.pink,
                context: context,
              ),
        ),
      ),
    );
  }
}
