import 'package:flutter/material.dart';
import 'package:hardtech/data/hardware_issues.dart';
import 'package:hardtech/models/hardware_issue.dart';
import 'package:hardtech/screens/troubleshooting_guide_screen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Hard Tech'),
        leading: const Icon(Icons.computer), // App Logo
        actions: [
          IconButton(
            icon: const Icon(Icons.person_outline),
            onPressed: () {
              // Navigate to profile
            },
          ),
        ],
      ),
      body: GridView.builder(
        padding: const EdgeInsets.all(16.0),
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          crossAxisSpacing: 16.0,
          mainAxisSpacing: 16.0,
          childAspectRatio: 1.2,
        ),
        itemCount: hardwareIssues.length,
        itemBuilder: (context, index) {
          final issue = hardwareIssues[index];
          return _buildIssueCard(context, issue);
        },
      ),
    );
  }

  Widget _buildIssueCard(BuildContext context, HardwareIssue issue) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => TroubleshootingGuideScreen(issue: issue),
          ),
        );
      },
      child: Card(
        elevation: 4.0,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(16.0),
        ),
        color: Colors.grey[850],
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              issue.icon,
              size: 48.0,
              color: const Color(0xFF1DB6FF),
            ),
            const SizedBox(height: 12.0),
            Text(
              issue.title,
              textAlign: TextAlign.center,
              style: const TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
