import 'package:hardtech/models/troubleshooting_step.dart';

class HardwareIssue {
  final String title;
  final String description;
  final List<TroubleshootingStep> steps;

  HardwareIssue({
    required this.title,
    required this.description,
    required this.steps,
  });
}
