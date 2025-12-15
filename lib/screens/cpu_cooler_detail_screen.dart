import 'package:flutter/material.dart';
import 'package:hardtech/screens/fullscreen_image_screen.dart';
import 'package:hardtech/widgets/assembly_timeline.dart';

class CPUCoolerDetailScreen extends StatelessWidget {
  const CPUCoolerDetailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
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
        _buildImageCard(context,
            imageUrl: 'assets/images/thermalpaste12.png',
            title: 'Thermal Paste Application'),
        const SizedBox(height: 16.0),
        _buildImageCard(context,
            imageUrl: 'assets/images/coolermastercpu-coole.jpeg',
            title: 'Cooler Mounting'),
        const SizedBox(height: 16.0),
        _buildImageCard(context,
            imageUrl: 'assets/images/cpu fan support.jpg',
            title: 'Connecting Fan'),
      ],
    );
  }

  Widget _buildImageCard(BuildContext context,
      {String? imageUrl, required String title}) {
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
              Text(title,
                  style: const TextStyle(color: Colors.white, fontSize: 18.0)),
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
                          errorBuilder: (context, error, stackTrace) {
                            return const Center(
                                child: Icon(Icons.error,
                                    color: Colors.red, size: 50.0));
                          },
                        ),
                      )
                    : const Center(
                        child:
                            Icon(Icons.image, size: 50.0, color: Colors.grey),
                      ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}