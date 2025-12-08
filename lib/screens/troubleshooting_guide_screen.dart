import 'package:flutter/material.dart';
import 'package:hardtech/models/hardware_issue.dart';

class TroubleshootingGuideScreen extends StatelessWidget {
  final HardwareIssue issue;

  const TroubleshootingGuideScreen({super.key, required this.issue});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(issue.title),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              issue.description,
              style: const TextStyle(fontSize: 16.0, fontStyle: FontStyle.italic),
            ),
            const SizedBox(height: 24.0),
            const Text(
              'Troubleshooting Steps:',
              style: TextStyle(
                fontSize: 20.0,
                fontWeight: FontWeight.bold,
                color: Color(0xFF1DB6FF),
              ),
            ),
            const SizedBox(height: 16.0),
            ...issue.steps.map((step) => _buildStepCard(step)),
          ],
        ),
      ),
    );
  }

  Widget _buildStepCard(dynamic step) {
    return Card(
      margin: const EdgeInsets.symmetric(vertical: 8.0),
      elevation: 3.0,
      color: Colors.grey[850],
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12.0)),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              step.title,
              style: const TextStyle(
                fontSize: 18.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 8.0),
            Text(
              step.description,
              style: const TextStyle(fontSize: 15.0, color: Colors.white70),
            ),
          ],
        ),
      ),
    );
  }
}
