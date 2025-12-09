import 'package:flutter/material.dart';
import 'package:hardtech/models/scan_step.dart';
import 'package:timeline_tile/timeline_tile.dart';

class ScanStepWidget extends StatelessWidget {
  final ScanStep step;
  final bool isFirst;
  final bool isLast;

  const ScanStepWidget({
    super.key,
    required this.step,
    required this.isFirst,
    required this.isLast,
  });

  @override
  Widget build(BuildContext context) {
    return TimelineTile(
      isFirst: isFirst,
      isLast: isLast,
      beforeLineStyle: const LineStyle(
        color: Color(0xFF1DB6FF),
        thickness: 2,
      ),
      indicatorStyle: IndicatorStyle(
        width: 40,
        height: 40,
        indicator: Container(
          decoration: BoxDecoration(
            color: const Color(0xFF1DB6FF),
            shape: BoxShape.circle,
            border: Border.all(color: Colors.white, width: 2),
          ),
          child: Center(
            child: Text(
              step.stepNumber.toString(),
              style: const TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontSize: 18,
              ),
            ),
          ),
        ),
      ),
      endChild: Container(
        constraints: const BoxConstraints(
          minHeight: 120,
        ),
        margin: const EdgeInsets.all(8.0),
        child: Card(
          elevation: 5,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12.0),
            side: BorderSide(color: Colors.grey[800]!, width: 1),
          ),
          color: const Color(0xFF1E1E1E),
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  step.title,
                  style: const TextStyle(
                    fontSize: 20.0,
                    fontWeight: FontWeight.bold,
                    color: Color(0xFF1DB6FF),
                  ),
                ),
                const SizedBox(height: 12.0),
                Text(
                  step.description,
                  style: TextStyle(
                    fontSize: 16,
                    color: Colors.white.withAlpha(204),
                  ),
                ),
                const SizedBox(height: 20.0),
                const Text(
                  'Possible Causes:',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 16,
                    color: Colors.white,
                  ),
                ),
                const SizedBox(height: 12.0),
                Wrap(
                  spacing: 10.0,
                  runSpacing: 10.0,
                  children: step.possibleCauses
                      .map((cause) => Chip(
                            avatar: const Icon(Icons.warning_amber_rounded,
                                color: Colors.amber, size: 18),
                            label: Text(cause),
                            backgroundColor: Colors.grey[850],
                            labelStyle: const TextStyle(color: Colors.white70),
                            padding: const EdgeInsets.symmetric(
                                horizontal: 12, vertical: 8),
                          ))
                      .toList(),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
