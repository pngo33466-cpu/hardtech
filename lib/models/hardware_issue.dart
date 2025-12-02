import 'package:flutter/material.dart';

class HardwareIssue {
  final String title;
  final IconData icon;
  final List<String> steps;
  final List<String> causes;

  HardwareIssue({
    required this.title,
    required this.icon,
    required this.steps,
    required this.causes,
  });
}
