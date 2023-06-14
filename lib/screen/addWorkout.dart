import 'package:flutter/material.dart';
import 'package:day_picker/day_picker.dart';

class AddWorkOut extends StatelessWidget {
  const AddWorkOut({super.key});
  

  @override
  Widget build(BuildContext context) {
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
            Container(
              child: Row(
                children: [],
              ),
            )
          ],
        )));
  }
}
