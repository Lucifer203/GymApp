import 'package:flutter/material.dart';
import 'package:gymapp/providers/workoutSplit.dart';
import 'package:gymapp/providers/workouts.dart';
import 'package:provider/provider.dart';

class WorkoutItem extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final workout = Provider.of<WorkOut>(context);
    return ClipRRect(
      borderRadius: BorderRadius.circular(15),
      child: ListView(
        children: [
          ListTile(
            leading: Image.network(
              workout.imageUrl,
              fit: BoxFit.cover,
            ),
            title: Text(workout.title),
            subtitle: Text(workout.description),
          )
        ],
      ),
    );
  }
}
