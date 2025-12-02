import 'package:hardtech/models/scan_step.dart';

final powerIssuesSteps = [
  const ScanStep(
    stepNumber: 1,
    title: 'Check Power Source',
    description: 'Ensure the device is properly plugged into a working outlet.',
    possibleCauses: ['Loose cable', 'Faulty power outlet', 'Damaged power cord'],
  ),
  const ScanStep(
    stepNumber: 2,
    title: 'Test with a Different Charger',
    description: 'Use a different charger and cable to rule out a faulty power adapter.',
    possibleCauses: ['Damaged charger', 'Incompatible charger', 'Bent connector'],
  ),
];

final noDisplaySteps = [
  const ScanStep(
    stepNumber: 1,
    title: 'Check Monitor Connection',
    description: 'Ensure the monitor cable is securely connected to both the device and the display.',
    possibleCauses: ['Loose or damaged cable', 'Incorrect input source', 'Faulty port'],
  ),
];

final overheatingSteps = [
  const ScanStep(
    stepNumber: 1,
    title: 'Improve Airflow',
    description: 'Ensure the device has proper ventilation and is not in a confined space.',
    possibleCauses: ['Blocked vents', 'Dust buildup', 'Poorly designed case'],
  ),
];

final slowPerformanceSteps = [
  const ScanStep(
    stepNumber: 1,
    title: 'Close Unnecessary Apps',
    description: 'Too many apps running in the background can slow down your device.',
    possibleCauses: ['High RAM usage', 'Background processes', 'Resource-heavy apps'],
  ),
];

final batteryDrainsQuicklySteps = [
  const ScanStep(
    stepNumber: 1,
    title: 'Check Battery Usage',
    description: 'Identify which apps are consuming the most power and close them if not needed.',
    possibleCauses: ['Screen brightness too high', 'Background app refresh', 'Old or faulty battery'],
  ),
];

final wifiNetworkIssuesSteps = [
  const ScanStep(
    stepNumber: 1,
    title: 'Restart Your Router',
    description: 'A simple router restart can often fix network issues.',
    possibleCauses: ['Router glitch', 'IP address conflict', 'Outdated router firmware'],
  ),
];

final blueScreenSteps = [
  const ScanStep(
    stepNumber: 1,
    title: 'Note the Error Code',
    description: 'The error code can help identify the root cause of the problem.',
    possibleCauses: ['Corrupt system files', 'Faulty hardware', 'Driver issues'],
  ),
];

final keyboardMouseNotWorkingSteps = [
  const ScanStep(
    stepNumber: 1,
    title: 'Check for a Physical Connection',
    description: 'Ensure the keyboard or mouse is properly connected to the device.',
    possibleCauses: ['Loose cable', 'Faulty USB port', 'Dead batteries (for wireless devices)'],
  ),
];

final printerNotRespondingSteps = [
  const ScanStep(
    stepNumber: 1,
    title: 'Check the Printer Queue',
    description: 'Clear any stuck print jobs in the queue and restart the printer.',
    possibleCauses: ['Jammed paper', 'Low ink or toner', 'Outdated printer drivers'],
  ),
];

final audioSpeakerProblemsSteps = [
  const ScanStep(
    stepNumber: 1,
    title: 'Check Volume Levels and Mute Settings',
    description: 'Ensure the volume is not muted or set too low.',
    possibleCauses: ['Incorrect audio output device selected', 'Outdated audio drivers', 'Faulty speakers or headphones'],
  ),
];

final networkTroubleshooterSteps = [
  const ScanStep(
    stepNumber: 1,
    title: 'Restart Your Router',
    description: 'A simple router restart can often fix network issues.',
    possibleCauses: ['Router glitch', 'IP address conflict', 'Overheating router'],
  ),
];
