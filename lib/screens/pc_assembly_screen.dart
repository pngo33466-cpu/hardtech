import 'package:flutter/material.dart';
import 'package:hardtech/data/pc_components.dart';

class PCAssemblyScreen extends StatelessWidget {
  const PCAssemblyScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Assemble / Disassemble',
          style: TextStyle(
            color: Color(0xFF1DB6FF),
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: ListView.builder(
        itemCount: pcComponents.length,
        itemBuilder: (context, index) {
          final component = pcComponents[index];
          return Card(
            margin: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
            child: ListTile(
              leading: Icon(component.icon, size: 40.0, color: Theme.of(context).primaryColor),
              title: Text(component.name, style: const TextStyle(fontWeight: FontWeight.bold)),
              trailing: const Icon(Icons.arrow_forward_ios),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => component.destinationScreen,
                  ),
                );
              },
            ),
          );
        },
      ),
    );
  }
}
