import 'package:flutter/material.dart';
import 'package:hardtech/screens/about_screen.dart';
import 'package:hardtech/screens/common_hardware_issues_screen.dart';
import 'package:hardtech/screens/pc_assembly_screen.dart';
import 'package:hardtech/screens/settings_screen.dart';
import 'package:hardtech/screens/tools_screen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: const Text(
          'Hard Tech Dashboard',
          style: TextStyle(
            color: Color(0xFF1DB6FF),
            fontWeight: FontWeight.bold,
          ),
        ),
        elevation: 0,
        actions: [
          IconButton(
            icon: const Icon(Icons.settings, color: Color(0xFF1DB6FF)),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const SettingsScreen()),
              );
            },
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            _buildPCAssemblyGuideCard(context),
            const SizedBox(height: 16.0),
            _buildCommonIssuesCard(context),
            const SizedBox(height: 16.0),
            _buildHardwareToolsCard(context),
          ],
        ),
      ),
      bottomNavigationBar: BottomAppBar(
        shape: const CircularNotchedRectangle(),
        notchMargin: 4.0,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: <Widget>[
            TextButton(
              onPressed: () {},
              child: const Column(
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  Icon(Icons.home),
                  Text('HOME'),
                ],
              ),
            ),
            TextButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const AboutScreen()),
                );
              },
              child: const Column(
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  Icon(Icons.info),
                  Text('ABOUT'),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildPCAssemblyGuideCard(BuildContext context) {
    return Card(
      child: InkWell(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => const PCAssemblyScreen()),
          );
        },
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Row(
            children: [
              const Icon(Icons.build, size: 40.0, color: Color(0xFF1DB6FF)),
              const SizedBox(width: 20.0),
              const Expanded(
                child: Text(
                  'PC Assembly Guide',
                  style: TextStyle(
                    fontSize: 18.0,
                    fontWeight: FontWeight.bold,
                    color: Color(0xFF1DB6FF),
                  ),
                ),
              ),
              Icon(Icons.arrow_forward_ios),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildCommonIssuesCard(BuildContext context) {
    return Card(
      child: InkWell(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => const CommonHardwareIssuesScreen()),
          );
        },
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Row(
            children: [
              const Icon(Icons.report_problem, size: 40.0, color: Color(0xFF1DB6FF)),
              const SizedBox(width: 20.0),
              const Expanded(
                child: Text(
                  'Common Hardware Issues',
                  style: TextStyle(
                    fontSize: 18.0,
                    fontWeight: FontWeight.bold,
                    color: Color(0xFF1DB6FF),
                  ),
                ),
              ),
              Icon(Icons.arrow_forward_ios),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildHardwareToolsCard(BuildContext context) {
    return Card(
      child: InkWell(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => const ToolsScreen()),
          );
        },
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Row(
            children: [
              const Icon(Icons.handyman, size: 40.0, color: Color(0xFF1DB6FF)),
              const SizedBox(width: 20.0),
              const Expanded(
                child: Text(
                  'Hardware Tools',
                  style: TextStyle(
                    fontSize: 18.0,
                    fontWeight: FontWeight.bold,
                    color: Color(0xFF1DB6FF),
                  ),
                ),
              ),
              Icon(Icons.arrow_forward_ios),
            ],
          ),
        ),
      ),
    );
  }
}
