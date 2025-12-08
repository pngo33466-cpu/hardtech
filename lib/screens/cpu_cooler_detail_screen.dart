import 'package:flutter/material.dart';
import 'package:hardtech/widgets/assembly_timeline.dart';

class CPUCoolerDetailScreen extends StatelessWidget {
  const CPUCoolerDetailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'CPU Cooler Details',
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
            const AssemblyTimeline(
              title: 'Assembly Steps',
              icon: Icons.build,
              steps: [
                'Apply thermal paste to the CPU.',
                'Mount the cooler onto the CPU.',
                'Secure the cooler in place.',
                'Connect the cooler fan to the motherboard.',
              ],
            ),
            const SizedBox(height: 24.0),
            const AssemblyTimeline(
              title: 'Disassembly Steps',
              icon: Icons.undo,
              steps: [
                'Disconnect the cooler fan.',
                'Unscrew and remove the cooler.',
              ],
            ),
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

  Widget _buildImagePlaceholders() {
    return Column(
      children: [
        _buildImageCard('Thermal Paste Application'),
        const SizedBox(height: 16.0),
        _buildImageCard('Cooler Mounting'),
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
            Text(title, style: const TextStyle(color: Colors.white, fontSize: 18.0)),
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
