import 'package:flutter/material.dart';
import 'package:hardtech/screens/fullscreen_image_screen.dart';
import 'package:hardtech/widgets/assembly_timeline.dart';

class PSUDetailScreen extends StatelessWidget {
  const PSUDetailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
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
        _buildImageCard(context, title: 'PSU Cable Management', imageUrl: 'assets/images/cable-management.png'),
        const SizedBox(height: 16.0),
        _buildImageCard(context, title: 'PSU Mounting', imageUrl: 'assets/images/psumounting.png'),
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
