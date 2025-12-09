import 'package:flutter/material.dart';

class CablesDetailScreen extends StatelessWidget {
  const CablesDetailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Cables Details',
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
            _buildSectionTitle('Connection Steps (Assembly)'),
            _buildAssemblySteps(),
            const SizedBox(height: 24.0),
            _buildSectionTitle('Disconnection Steps (Disassembly)'),
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
        title: Text('Click to see Connection Steps', style: TextStyle(color: Colors.white)),
        children: [
          ListTile(title: Text('1. Connect 24-pin ATX power to motherboard.')),
          ListTile(title: Text('2. Connect 8-pin CPU power near the CPU socket.')),
          ListTile(title: Text('3. Connect PCIe power cables to the GPU.')),
          ListTile(title: Text('4. Connect SATA power and data cables to SSDs/HDDs.')),
          ListTile(title: Text('5. Connect Case Fan cables to motherboard headers.')),
          ListTile(title: Text('6. Connect Front Panel connectors (Power, Reset, LED) to motherboard pins.')),
          ListTile(title: Text('7. Connect Front USB and Audio headers.')),
        ],
      ),
    );
  }

  Widget _buildDisassemblySteps() {
    return Card(
      color: Colors.grey[850],
      child: const ExpansionTile(
        leading: Icon(Icons.undo, color: Color(0xFF1DB6FF)),
        title: Text('Click to see Disconnection Steps', style: TextStyle(color: Colors.white)),
        children: [
          ListTile(title: Text('1. Power off and unplug the PC completely.')),
          ListTile(title: Text('2. Disconnect front panel, USB, and audio headers.')),
          ListTile(title: Text('3. Unplug SATA power and data from drives.')),
          ListTile(title: Text('4. Unplug PCIe power from the GPU.')),
          ListTile(title: Text('5. Unplug 24-pin ATX and 8-pin CPU power from the motherboard.')),
        ],
      ),
    );
  }

  Widget _buildImagePlaceholders() {
    return Column(
      children: [
        _buildImageCard('Proper Cable Management'),
        const SizedBox(height: 16.0),
        _buildImageCard('Common Cable Connectors'),
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
                color: Colors.black.withAlpha(128),
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
