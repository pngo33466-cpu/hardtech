import 'package:flutter/material.dart';

class CaseFansDetailScreen extends StatelessWidget {
  const CaseFansDetailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Case Fans Details',
          style: TextStyle(
            color: Color(0xFF1DB6FF),
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            _buildSectionTitle('Assembly Steps'),
            _buildAssemblySteps(),
            const SizedBox(height: 24.0),
            _buildSectionTitle('Disassembly Steps'),
            _buildDisassemblySteps(),
            const SizedBox(height: 24.0),
            _buildSectionTitle('Image Guides'),
            _buildImagePlaceholders(),
          ],
        ),
      ),
    );
  }

  Widget _buildSectionTitle(String title) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 16.0),
      child: Text(
        title,
        style: const TextStyle(
          fontSize: 24.0,
          fontWeight: FontWeight.bold,
          color: Colors.white,
        ),
      ),
    );
  }

  Widget _buildAssemblySteps() {
    return Card(
      color: Colors.grey[850],
      child: const ExpansionTile(
        leading: Icon(Icons.build, color: Color(0xFF1DB6FF)),
        title: Text('Click to see Assembly Steps', style: TextStyle(color: Colors.white)),
        children: [
          ListTile(title: Text('1. Determine the optimal airflow for your case (intake and exhaust).')),
          ListTile(title: Text('2. Hold the fan against the mounting point on the case.')),
          ListTile(title: Text('3. Align the screw holes on the fan with the holes on the case.')),
          ListTile(title: Text('4. Use the provided screws to secure the fan in place.')),
          ListTile(title: Text('5. Connect the fan\'s power cable to a fan header on the motherboard or a fan controller.')),
        ],
      ),
    );
  }

  Widget _buildDisassemblySteps() {
    return Card(
      color: Colors.grey[850],
      child: const ExpansionTile(
        leading: Icon(Icons.undo, color: Color(0xFF1DB6FF)),
        title: Text('Click to see Disassembly Steps', style: TextStyle(color: Colors.white)),
        children: [
          ListTile(title: Text('1. Power off the PC and disconnect the power cord.')),
          ListTile(title: Text('2. Locate the fan\'s power connector on the motherboard or fan controller and unplug it.')),
          ListTile(title: Text('3. While holding the fan, unscrew the four screws mounting it to the case.')),
          ListTile(title: Text('4. Carefully remove the fan from the case.')),
        ],
      ),
    );
  }

  Widget _buildImagePlaceholders() {
    return Column(
      children: [
        _buildImageCard('Proper Assembly Image (Airflow Direction)'),
        const SizedBox(height: 16.0),
        _buildImageCard('Proper Disassembly Image'),
      ],
    );
  }

  Widget _buildImageCard(String title) {
    return Card(
      color: Colors.grey[850],
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            Text(title, style: const TextStyle(color: Colors.white, fontSize: 18.0), textAlign: TextAlign.center),
            const SizedBox(height: 16.0),
            Container(
              height: 200,
              width: double.infinity,
              decoration: BoxDecoration(
                color: Colors.black.withOpacity(0.5),
                borderRadius: BorderRadius.circular(8.0),
                border: Border.all(color: Colors.grey),
              ),
              child: const Center(
                child: Icon(Icons.image, size: 50.0, color: Colors.grey),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
