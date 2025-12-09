import 'package:flutter/material.dart';

// --- Data Model ---
class Tool {
  final String name;
  final String description;
  final String? imageUrl;

  const Tool({
    required this.name,
    required this.description,
    this.imageUrl,
  });
}

// --- Data Source ---
const Map<String, List<Tool>> toolsByCategory = {
  'Basic Hand Tools': [
    Tool(
      name: 'Phillips Screwdriver',
      description: 'Used for tightening and loosening cross-head screws found on cases, motherboards, and drives.',
      imageUrl: 'assets/images/screwdriver1.png',
    ),
    Tool(
      name: 'Flat Screwdriver',
      description: 'Used for slotted screws, and sometimes for gently prying open case parts or components.',
      imageUrl: 'assets/images/flatscrew2.png',
    ),
    Tool(
      name: 'Tweezers',
      description: 'Essential for picking up dropped screws and handling small, delicate components like motherboard jumpers.',
      imageUrl: 'assets/images/tweez3.jpg',
    ),
    Tool(
      name: 'Pliers',
      description: 'Needle-nose pliers are useful for gripping, bending wires, and retrieving items from tight spaces.',
      imageUrl: 'assets/images/fliers4.png',
    ),
  ],
  'Diagnostic Tools': [
    Tool(
      name: 'Multimeter',
      description: 'Measures voltage, current, and resistance. Crucial for diagnosing power issues with components.',
      imageUrl: 'assets/images/multi5.png',
    ),
    Tool(
      name: 'POST Card',
      description: 'Plugs into a motherboard slot to display Power-On Self-Test codes, helping diagnose boot failures.',
      imageUrl: 'assets/images/post-card7.png',
    ),
    Tool(
      name: 'Power Supply Tester (PSU Tester)',
      description: 'A dedicated device to quickly test if a computer\'s power supply unit is providing the correct voltages.',
      imageUrl: 'assets/images/psutester10.png',
    ),
    Tool(
      name: 'Loopback Plug',
      description: 'Tests network (Ethernet) and older serial/parallel ports to ensure they are functioning correctly.',
    ),
  ],
  'Computer Assembly Tools': [
    Tool(
      name: 'Thermal Paste',
      description: 'A conductive material applied between a CPU/GPU and its heatsink to ensure efficient heat transfer.',
    ),
    Tool(
      name: 'Cable Ties & Velcro Straps',
      description: 'Used for managing and organizing internal cables, improving airflow and the PC\'s overall look.',
    ),
    Tool(
      name: 'Compressed Air Duster',
      description: 'Used for safely cleaning dust and debris from heatsinks, fans, and other sensitive components.',
    ),
    Tool(
      name: 'Anti-Static Wrist Strap',
      description: 'Protects sensitive electronic components from damage caused by electrostatic discharge (ESD).',
    ),
  ],
};

// --- Main Screen Widget ---
class ToolsScreen extends StatelessWidget {
  const ToolsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Hardware Tools'),
        backgroundColor: Colors.grey[900],
        elevation: 0,
      ),
      body: ListView.builder(
        padding: const EdgeInsets.all(16.0),
        itemCount: toolsByCategory.keys.length,
        itemBuilder: (context, index) {
          final category = toolsByCategory.keys.elementAt(index);
          final tools = toolsByCategory[category]!;
          return ToolCategorySection(
            categoryTitle: category,
            tools: tools,
          );
        },
      ),
    );
  }
}

// --- Category Section Widget ---
class ToolCategorySection extends StatelessWidget {
  final String categoryTitle;
  final List<Tool> tools;

  const ToolCategorySection({
    super.key,
    required this.categoryTitle,
    required this.tools,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(bottom: 12.0, top: 16.0),
          child: Text(
            categoryTitle,
            style: Theme.of(context).textTheme.headlineSmall?.copyWith(
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
          ),
        ),
        ...tools.map((tool) => ToolCard(tool: tool)),
        const SizedBox(height: 16),
      ],
    );
  }
}

// --- Tool Card Widget ---
class ToolCard extends StatelessWidget {
  final Tool tool;

  const ToolCard({super.key, required this.tool});

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.only(bottom: 16.0),
      color: Colors.grey[800],
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12.0),
      ),
      elevation: 4,
      clipBehavior: Clip.antiAlias, // Ensures the container respects the card's border radius
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Image
          Container(
            height: 150,
            width: double.infinity,
            color: Colors.grey[700],
            child: tool.imageUrl != null
                ? Image.asset(
                    tool.imageUrl!,
                    fit: BoxFit.contain,
                  )
                : Center(
                    child: Icon(
                      Icons.image_not_supported_outlined,
                      color: Colors.grey[500],
                      size: 40,
                    ),
                  ),
          ),
          Padding(
            padding: const EdgeInsets.all(12.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // Tool Name
                Text(
                  tool.name,
                  style: const TextStyle(
                    fontSize: 18.0,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
                const SizedBox(height: 8.0),
                // Tool Description
                Text(
                  tool.description,
                  style: TextStyle(
                    fontSize: 14.0,
                    color: Colors.white70,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
