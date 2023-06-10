import 'package:flutter/material.dart';
import 'package:gymapp/providers/workoutSplit.dart';
import 'package:provider/provider.dart';

class WorkOuts with ChangeNotifier {
  List<WorkOut> _splits = [
    WorkOut(
      id: 'w1',
      title: "Push-Pull",
      days: 5,
      description: "This is push pull leg workout split",
      imageUrl: 'https://images.app.goo.gl/ZMXHjdJDbCgEbUAR8',
    ),
  ];

  List<WorkOut> get splits {
    return [..._splits];
  }
}
