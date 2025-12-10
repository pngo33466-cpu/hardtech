import 'package:flutter/material.dart';
import 'package:hardtech/screens/fullscreen_image_screen.dart';
import 'package:hardtech/widgets/assembly_timeline.dart';

class CPUDetailScreen extends StatelessWidget {
  const CPUDetailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'CPU Details',
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
                'Open the CPU socket lever on the motherboard.',
                'Align the CPU with the socket and place it gently.',
                'Close the CPU socket lever.',
              ],
            ),
            const SizedBox(height: 24.0),
            const AssemblyTimeline(
              title: 'Disassembly Steps',
              icon: Icons.undo,
              steps: [
                'Open the CPU socket lever.',
                'Gently lift the CPU from the socket.',
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
        _buildImageCard(context, imageUrl: 'assets/images/installing-a-cpu21.png'),
        const SizedBox(height: 16.0),
        _buildImageCard(context, imageUrl: 'assets/images/allignment27.jpg'),
        const SizedBox(height: 16.0),
        _buildImageCard(context, imageUrl: 'assets/images/allignment28.jpg'),
        const SizedBox(height: 16.0),
        _buildImageCard(context),
        const SizedBox(height: 16.0),
        _buildImageCard(context),
        const SizedBox(height: 16.0),
        _buildImageCard(context),
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
