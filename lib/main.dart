import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatelessWidget {
  final String title;
  MyHomePage({Key key, this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final anArbitraryDateTime = DateTime(2020, 3, 2, 1, 2, 3, 4, 5);
    final anArbitraryDateAtMidnight = DateTime(
      anArbitraryDateTime.year,
      anArbitraryDateTime.month,
      anArbitraryDateTime.day,
    );
    final someHoursAfterAnArbitraryDate = anArbitraryDateTime.add(Duration(hours: 3));
    final someDaysAfterAnArbitraryDate = anArbitraryDateTime.add(Duration(days: 3));
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      body: Center(
        child: CupertinoDatePicker(
          mode: CupertinoDatePickerMode.dateAndTime,
          onDateTimeChanged: (newDateTime) {},
          minimumDate: anArbitraryDateAtMidnight,
          initialDateTime: someHoursAfterAnArbitraryDate,
          maximumDate: someDaysAfterAnArbitraryDate,
        ),
      ),
    );
  }
}
