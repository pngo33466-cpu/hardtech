import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:hardtech/main.dart';

class SettingsScreen extends StatelessWidget {
  const SettingsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final themeProvider = Provider.of<ThemeProvider>(context);

    return Scaffold(
      appBar: AppBar(
        title: const Text('Settings'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            Card(
              child: ListTile(
                leading: const Icon(Icons.brightness_6),
                title: const Text('Dark/Light Mode'),
                trailing: Switch(
                  value: themeProvider.themeMode == ThemeMode.dark,
                  onChanged: (value) {
                    themeProvider.toggleTheme(value);
                  },
                ),
              ),
            ),
            const SizedBox(height: 20),
            const Card(
              child: Padding(
                padding: EdgeInsets.all(16.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'APP INFO:',
                      style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    ),
                    SizedBox(height: 10),
                    Text('App Name: HardTech'),
                    Text('Version: 1.0.0'),
                    Text('Developer: V-JAY CARANDANG'),
                    Text('Description: HardTech is an app that helps users learn about computer hardware. It provides guides for PC assembly, common hardware issues, and information about essential tools.'),
                    Text('Contact: support@hardtech.com'),
                    Text('Website: www.hardtech.com'),
                    Text('Terms and Conditions: The app provides educational content only; HardTech is not responsible for hardware damage or errors during PC assembly.'),
                    Text('Privacy Policy: The app may use cookies or local storage to save preferences and settings.'),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
