import 'package:flutter/material.dart';

class WorkOut  {
  final String id;
  final String title;
  final int days;
  final String description;
  final String imageUrl;

  WorkOut({
    required this.id,
    required this.title,
    required this.days,
    required this.description,
    required this.imageUrl,
  });
}
