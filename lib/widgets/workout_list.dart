import 'package:flutter/material.dart';
import 'package:gymapp/providers/workouts.dart';
import 'package:gymapp/widgets/workout_items.dart';
import 'package:provider/provider.dart';

class WorkoutList extends StatelessWidget {
  const WorkoutList({super.key});

  @override
  Widget build(BuildContext context) {
    final workout = Provider.of<WorkOuts>(context);
    final workoutList = workout.splits;
    return ListView.builder(
      itemBuilder: (context, index) => WorkoutItem(),
      itemCount: workoutList.length,
    );
  }
}
