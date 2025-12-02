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
        backgroundColor: Colors.transparent,
        elevation: 0,
        actions: [
          IconButton(
            icon: const Icon(Icons.person_outline),
            onPressed: () {
              // Navigate to profile
            },
          ),
        ],
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ...issue.steps.asMap().entries.map((entry) {
              int idx = entry.key;
              String step = entry.value;
              return _buildStepCard(
                stepNumber: (idx + 1).toString(),
                description: step,
                icon: Icons.build_circle_outlined, // Generic icon
              );
            }).toList(),
            const SizedBox(height: 24.0),
            const Text(
              'Possible Causes',
              style: TextStyle(
                fontSize: 20.0,
                fontWeight: FontWeight.bold,
                color: Color(0xFF1DB6FF),
              ),
            ),
            const SizedBox(height: 12.0),
            ...issue.causes.map((cause) => _buildCauseItem(cause)).toList(),
            const SizedBox(height: 24.0),
            const Text(
              'Attach a Picture',
              style: TextStyle(
                fontSize: 20.0,
                fontWeight: FontWeight.bold,
                color: Color(0xFF1DB6FF),
              ),
            ),
            const SizedBox(height: 12.0),
            GestureDetector(
              onTap: () {
                // Handle image attachment
              },
              child: Container(
                height: 150,
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Colors.grey[900],
                  borderRadius: BorderRadius.circular(16.0),
                  border: Border.all(
                    color: const Color(0xFF1DB6FF),
                    width: 2.0,
                  ),
                ),
                child: const Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(
                      Icons.add_a_photo_outlined,
                      size: 48.0,
                      color: Color(0xFF1DB6FF),
                    ),
                    SizedBox(height: 8.0),
                    Text(
                      'Tap to add a screenshot or picture',
                      style: TextStyle(
                        color: Colors.white70,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildStepCard({
    required String stepNumber,
    required String description,
    required IconData icon,
  }) {
    return Card(
      elevation: 4.0,
      margin: const EdgeInsets.symmetric(vertical: 8.0),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(16.0),
      ),
      color: Colors.grey[850],
      child: ListTile(
        leading: CircleAvatar(
          backgroundColor: const Color(0xFF1DB6FF),
          child: Text(
            stepNumber,
            style: const TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        title: Text(
          description,
          style: const TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
        ),
        trailing: Icon(icon, color: Colors.white70),
      ),
    );
  }

  Widget _buildCauseItem(String cause) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 4.0),
      child: Row(
        children: [
          const Icon(
            Icons.arrow_right,
            color: Color(0xFF1DB6FF),
          ),
          const SizedBox(width: 8.0),
          Text(
            cause,
            style: const TextStyle(
              color: Colors.white70,
              fontSize: 16.0,
            ),
          ),
        ],
      ),
    );
  }
}
