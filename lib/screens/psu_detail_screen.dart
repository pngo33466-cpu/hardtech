import 'package:flutter/material.dart';
import 'package:hardtech/widgets/assembly_timeline.dart';

class PSUDetailScreen extends StatelessWidget {
  const PSUDetailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'PSU Details',
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
                'Mount the PSU in the PC case.',
                'Connect the 24-pin motherboard power cable.',
                'Connect the 8-pin CPU power cable.',
                'Connect other necessary cables (GPU, storage).',
              ],
            ),
            const SizedBox(height: 24.0),
            const AssemblyTimeline(
              title: 'Disassembly Steps',
              icon: Icons.undo,
              steps: [
                'Disconnect all PSU cables from components.',
                'Unmount the PSU from the PC case.',
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
        _buildImageCard('PSU Cable Management'),
        const SizedBox(height: 16.0),
        _buildImageCard('PSU Mounting'),
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
