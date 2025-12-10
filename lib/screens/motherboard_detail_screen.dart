import 'package:flutter/material.dart';
import 'package:hardtech/screens/fullscreen_image_screen.dart';
import 'package:hardtech/widgets/assembly_timeline.dart';

class MotherboardDetailScreen extends StatelessWidget {
  const MotherboardDetailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: const Text(
          'Motherboard Details',
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
                'Install the CPU.',
                'Install the RAM modules.',
                'Install the CPU cooler.',
                'Mount the motherboard in the PC case.',
                'Connect the power supply cables.',
              ],
            ),
            const SizedBox(height: 24.0),
            const AssemblyTimeline(
              title: 'Disassembly Steps',
              icon: Icons.undo,
              steps: [
                'Disconnect all external cables.',
                'Remove the graphics card.',
                'Disconnect power supply and data cables.',
                'Unscrew the motherboard from the case.',
                'Carefully lift the motherboard out.',
              ],
            ),
            const SizedBox(height: 24.0),
            _buildSectionTitle(context, 'Image Guides'),
            _buildImagePlaceholders(context),
          ],
        ),
      ),
    );
  }

  Widget _buildSectionTitle(BuildContext context, String title) {
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
        _buildImageCard(context, imageUrl: 'assets/images/cpu1.png'),
        const SizedBox(height: 16.0),
        _buildImageCard(context, imageUrl: 'assets/images/rammodules21.png'),
        const SizedBox(height: 16.0),
        _buildImageCard(context, imageUrl: 'assets/images/motherboard1.png'),
        const SizedBox(height: 16.0),
        _buildImageCard(context, imageUrl: 'assets/images/motherboard2.png'),
        const SizedBox(height: 16.0),
        _buildImageCard(context, imageUrl: 'assets/images/connectingcable8.png'),
        const SizedBox(height: 16.0),
        _buildImageCard(context, imageUrl: 'assets/images/motherboard3.png'),
      ],
    );
  }

  Widget _buildImageCard(BuildContext context, {String? imageUrl}) {
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
