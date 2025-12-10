import 'package:flutter/material.dart';

class FullScreenImageScreen extends StatelessWidget {
  final String imageUrl;

  const FullScreenImageScreen({super.key, required this.imageUrl});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: GestureDetector(
        onTap: () {
          Navigator.pop(context);
        },
        child: Center(
          child: InteractiveViewer(
            panEnabled: false, 
            boundaryMargin: const EdgeInsets.all(20),
            minScale: 0.5,
            maxScale: 4,
            child: Image.asset(
              imageUrl,
              fit: BoxFit.contain,
            ),
          ),
        ),
      ),
    );
  }
}
