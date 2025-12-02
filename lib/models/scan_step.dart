class ScanStep {
  final int stepNumber;
  final String title;
  final String description;
  final List<String> possibleCauses;

  const ScanStep({
    required this.stepNumber,
    required this.title,
    required this.description,
    required this.possibleCauses,
  });
}
