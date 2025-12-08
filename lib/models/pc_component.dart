import 'package:flutter/material.dart';

class PCComponent {
  final String name;
  final IconData icon;
  final Widget destinationScreen; // The screen to navigate to

  const PCComponent({
    required this.name,
    required this.icon,
    required this.destinationScreen,
  });
}
