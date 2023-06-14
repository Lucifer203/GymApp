import 'package:flutter/material.dart';
import 'package:gymapp/providers/workoutSplit.dart';
import 'package:gymapp/providers/workouts.dart';
import 'package:gymapp/utils/app_styles.dart';
import 'package:gymapp/widgets/workout_items.dart';
import 'package:provider/provider.dart';

class WorkoutList extends StatelessWidget {
  const WorkoutList({super.key});

  @override
  Widget build(BuildContext context) {
    // List<WorkOut> plan = WorkOuts().splits;
    // final workout = Provider.of<WorkOuts>(context);
    // final workoutList = workout.splits;
    final workoutProvider = Provider.of<WorkOuts>(context);
    final splits = workoutProvider.splits;
    return ListView.builder(
      // itemBuilder: (context, index) => WorkoutItem(),
      // itemCount: workoutList.length,
      // children: [
      //   ListTile(
      //     leading: Image.network(plan),
      //   )
      // ],
      itemCount: splits.length,
      itemBuilder: (context, index) {
        final workOut = splits[index];
        return Card(
          child: ListTile(
            title: Text(
              workOut.title,
              style: Styles.headLineStyle1,
            ),
            subtitle: Text(
              workOut.description,
              style: Styles.textStyle,
            ),
          ),
        );
      },
    );
  }
}
