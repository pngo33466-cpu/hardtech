import 'package:flutter/material.dart';
import 'package:hardtech/models/pc_component.dart';

class ComponentDetailScreen extends StatelessWidget {
  final PCComponent component;

  const ComponentDetailScreen({super.key, required this.component});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(component.name),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Center(
          child: Text(
            'Details for assembling and disassembling the ${component.name} will be displayed here.',
            textAlign: TextAlign.center,
            style: const TextStyle(fontSize: 18.0),
          ),
        ),
      ),
    );
  }
}
