import 'package:flutter/material.dart';
import 'package:timeline_tile/timeline_tile.dart';

class AssemblyTimeline extends StatelessWidget {
  final String title;
  final List<String> steps;
  final IconData icon;

  const AssemblyTimeline({
    super.key,
    required this.title,
    required this.steps,
    required this.icon,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.grey[850],
      margin: const EdgeInsets.symmetric(vertical: 8.0),
      child: ExpansionTile(
        leading: Icon(icon, color: const Color(0xFF1DB6FF)),
        title: Text(title, style: const TextStyle(color: Colors.white, fontWeight: FontWeight.bold)),
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 16.0),
            child: Column(
              children: [
                for (int i = 0; i < steps.length; i++)
                  TimelineTile(
                    alignment: TimelineAlign.manual,
                    lineXY: 0.15, // Adjust this to align the line and indicator
                    isFirst: i == 0,
                    isLast: i == steps.length - 1,
                    indicatorStyle: IndicatorStyle(
                      width: 40,
                      height: 40,
                      indicator: Container(
                        decoration: BoxDecoration(
                          color: Theme.of(context).primaryColor,
                          shape: BoxShape.circle,
                          border: Border.all(color: Colors.white, width: 2),
                        ),
                        child: Center(
                          child: Text(
                            '${i + 1}',
                            style: const TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 16,
                            ),
                          ),
                        ),
                      ),
                      drawGap: true,
                    ),
                    beforeLineStyle: LineStyle(
                      color: Theme.of(context).primaryColor.withOpacity(0.5),
                      thickness: 2,
                    ),
                    endChild: Container(
                      constraints: BoxConstraints(
                        minHeight: 60,
                      ),
                      padding: const EdgeInsets.symmetric(vertical: 16.0, horizontal: 12.0),
                      child: Text(steps[i], style: const TextStyle(color: Colors.white, fontSize: 15)),
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
