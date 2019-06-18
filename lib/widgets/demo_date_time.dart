import 'package:flutter/material.dart';

class DateTimeDemo extends StatelessWidget {

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: Text("DateTime Demo"),
      ),
      body: Container(
        child: Column(
          children: <Widget>[
            RaisedButton(
              onPressed: () {
                _selectDate(context);
              },
              child: Text("Date Picker"),
            ),
            RaisedButton(
              onPressed: () {
                _selectTime(context,DateTime.now());
              },
              child: Text("Time Picker "),
            ),
          ],
        ),
      ),
    );
  }
  Future<Null> _selectDate(BuildContext context) async{
    final DateTime _picked = await showDatePicker(
      context: context,
      initialDate: DateTime.now(),
      firstDate: DateTime(2018),
      lastDate: DateTime(2030),
      initialDatePickerMode: DatePickerMode.year,
    );
    if(_picked != null){
      _selectTime(context,_picked);
    }
  }

  Future<Null> _selectTime(BuildContext context,DateTime date) async{
    final TimeOfDay _picked = await showTimePicker(
      context: context,
      initialTime: TimeOfDay(hour: 0, minute: 0),
    );
    if(_picked != null){
      print("${date.year}-${date.month}-${date.day} ${_picked.hour}:${_picked.minute}");
    }
  }

}
