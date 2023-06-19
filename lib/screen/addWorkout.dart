import 'package:flutter/material.dart';
import 'package:day_picker/day_picker.dart';

class AddWorkOut extends StatefulWidget {
  const AddWorkOut({super.key});

  @override
  State<AddWorkOut> createState() => _AddWorkOutState();
}

class _AddWorkOutState extends State<AddWorkOut> {
  @override
  Widget build(BuildContext context) {
    List DayinWeek = [
      {'day': 'Sunday', 'id': '1'},
      {'day': 'Monday', 'id': '2'},
      {'day': 'Tuesday', 'id': '3'},
      {'day': 'Wednesday', 'id': '4'},
      {'day': 'Thursday', 'id': '5'},
      {'day': 'Friday', 'id': '6'},
      {'day': 'Saturday', 'id': '7'},
    ];
    String defaultValue = '1';
    return Scaffold(
        appBar: AppBar(
          title: Text("Add Workout"),
        ),
        body: Form(
          child: Column(
            children: [
              // Text("Enter Your Split"),
              Card(
                margin: EdgeInsets.symmetric(
                  vertical: 5,
                  horizontal: 10,
                ),
                child: TextFormField(
                  decoration: InputDecoration(
                    labelText: "Enter Workout Split",
                    hintText: "Bro Split",
                    border: UnderlineInputBorder(
                      borderSide: BorderSide.none,
                    ),
                  ),
                ),
              ),
              // Container(
              //   child: Row(
              //     children: [],
              //   ),
              // )
              Container(
                child:
                    // DropdownButton(items: [
                    //   const DropdownMenuItem(
                    //     child: Text("Select Day"),
                    //     value: "",
                    //   ),
                    //   ...DayinWeek.map<DayInWeek<String>>((e) {
                    //     return DropdownMenuItem(
                    //       child: Text(e['day']),
                    //       value: e['value'],
                    //     );
                    //   }).toList(),
                    // ], value: defaultValue, onChanged: null)
                    DropdownButton<String>(
                        value: defaultValue,
                        items: DayinWeek.map((e) {
                          return DropdownMenuItem<String>(
                            child: Text(
                              e['day'],
                              style: TextStyle(color: Colors.black),
                            ),
                            value: e['id'],
                          );
                        }).toList(),
                        onChanged: (newValue) {
                          setState(() {
                            defaultValue = newValue.toString();
                          });
                        }),
              )
            ],
          ),
        ));
  }
}
