import 'package:flutter/material.dart';
import 'package:gymapp/screen/addWorkout.dart';
import 'package:gymapp/utils/app_styles.dart';
import 'package:gymapp/widgets/workout_list.dart';
import '../widgets/app_drawer.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Styles.secondaryColor,
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.white),
        title: Text(
          "Gym App",
          style: Theme.of(context).textTheme.titleMedium,
        ),
        backgroundColor: Theme.of(context).primaryColor,
        actions: [
          IconButton(
            onPressed: () {
              Navigator.of(context).push(MaterialPageRoute(
                builder: (context) => AddWorkOut(),
              ));
            },
            icon: Icon(Icons.add),
          ),
        ],
      ),
      drawer: Drawer(
        backgroundColor: Theme.of(context).primaryColor,
        child: myDrawer(),
      ),
      body:
          // child: Column(
          //   children: [
          //     Text(
          //       "Workout Splits",
          //       style: Styles.headLineStyle1,
          //     ),
          //     Container(
          //       margin: EdgeInsets.all(10),
          //       height: 150,
          //       width: double.infinity,
          //       decoration: BoxDecoration(
          //           color: Colors.white, borderRadius: BorderRadius.circular(25)),
          //     )
          //   ],
          // ),

          Center(
        child: Container(
          child: WorkoutList(),
        ),
      ),
    );
  }
}
