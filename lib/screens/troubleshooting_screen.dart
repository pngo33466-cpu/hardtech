import 'package:flutter/material.dart';
import 'package:hardtech/models/scan_step.dart';
import 'package:hardtech/widgets/scan_step_widget.dart';

class TroubleshootingScreen extends StatelessWidget {
  final String title;
  final List<ScanStep> steps;

  const TroubleshootingScreen({super.key, required this.title, required this.steps});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title, style: const TextStyle(fontWeight: FontWeight.bold)),
        flexibleSpace: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [Colors.grey[900]!, Colors.black],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            ),
          ),
        ),
      ),
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [Colors.black, Colors.grey[900]!],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
          ),
        ),
        child: ListView.builder(
          padding: const EdgeInsets.symmetric(vertical: 20.0, horizontal: 8.0),
          itemCount: steps.length,
          itemBuilder: (context, index) {
            return ScanStepWidget(
              step: steps[index],
              isFirst: index == 0,
              isLast: index == steps.length - 1,
            );
          },
        ),
      ),
    );
  }
}
