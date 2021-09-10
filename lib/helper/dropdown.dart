import 'package:flutter/material.dart';

class Dropdown extends StatefulWidget {
  Dropdown({Key? key}) : super(key: key);

  @override
  _DropdownState createState() => _DropdownState();
}

class _DropdownState extends State<Dropdown> {
  String dropdownvalue = "Maize";

  @override
  Widget build(BuildContext context) {
    return DropdownButton<String>(
      value: dropdownvalue,
      icon: Icon(Icons.arrow_drop_down),
      iconSize: 25,
      elevation: 16,
      style: TextStyle(color: Colors.blue),
      // underline: Container(
      //   height: 3,
      //   color: Colors.blueAccent,
      // ),
      onChanged: (value) {
        setState(() {
          value = dropdownvalue;
        });
      },
      items: <String>["Maize", "Rice", "Patato", "carrot", "Pie"]
          .map<DropdownMenuItem<String>>((String val) {
        // ignore: missing_required_param
        return DropdownMenuItem<String>(
          value: val,
          child: Text(val),
        );
      }).toList(),
    );
  }
}
