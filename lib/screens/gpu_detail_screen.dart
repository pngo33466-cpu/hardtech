import 'package:flutter/material.dart';
import 'package:hardtech/screens/fullscreen_image_screen.dart';
import 'package:hardtech/widgets/assembly_timeline.dart';

// This is a comment to force a change
class GpuDetailScreen extends StatelessWidget {
  const GpuDetailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: const Text(
          'GPU Details',
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
                'Open the PCIe slot retainer.',
                'Align the GPU with the PCIe slot and press down.',
                'Secure the GPU with screws.',
                'Connect the PCIe power cables from the PSU.',
              ],
            ),
            const SizedBox(height: 24.0),
            const AssemblyTimeline(
              title: 'Disassembly Steps',
              icon: Icons.undo,
              steps: [
                'Disconnect the PCIe power cables.',
                'Unscrew the GPU and open the slot retainer.',
                'Gently pull the GPU out of the PCIe slot.',
              ],
            ),
            const SizedBox(height: 24.0),
            _buildSectionTitle('Image Guides'),
            _buildImagePlaceholders(context),
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

  Widget _buildImagePlaceholders(BuildContext context) {
    return Column(
      children: [
        _buildImageCard(context, title: 'PCIe Slot Alignment', imageUrl: 'assets/images/PCIe-slot28.png'),
        const SizedBox(height: 16.0),
        _buildImageCard(context, title: 'GPU Power Connection', imageUrl: 'assets/images/marketing.jpg'),
      ],
    );
  }

  Widget _buildImageCard(BuildContext context, {required String title, String? imageUrl}) {
    return GestureDetector(
      onTap: () {
        if (imageUrl != null) {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => FullScreenImageScreen(imageUrl: imageUrl),
            ),
          );
        }
      },
      child: Card(
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
                  color: Colors.black.withAlpha(128),
                  borderRadius: BorderRadius.circular(8.0),
                  border: Border.all(color: Colors.grey),
                ),
                child: imageUrl != null
                    ? Hero(
                        tag: imageUrl,
                        child: Image.asset(
                          imageUrl,
                          fit: BoxFit.cover,
                        ),
                      )
                    : const Center(
                        child: Icon(Icons.image, size: 50.0, color: Colors.grey),
                      ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
