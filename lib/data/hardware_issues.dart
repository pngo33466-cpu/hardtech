import 'package:flutter/material.dart';
import 'package:hardtech/models/hardware_issue.dart';

final List<HardwareIssue> hardwareIssues = [
  HardwareIssue(
    title: 'Laptop won\'t turn on',
    icon: Icons.laptop_chromebook,
    steps: [
      'Check the power adapter and outlet.',
      'Remove the battery and hold the power button for 15 seconds.',
      'Test with a different power adapter.',
    ],
    causes: [
      'Faulty power adapter',
      'Dead battery',
      'Internal power issue',
    ],
  ),
  HardwareIssue(
    title: 'No display / black screen',
    icon: Icons.desktop_windows,
    steps: [
      'Check if the monitor is powered on.',
      'Reconnect the display cable.',
      'Test with an external monitor.',
    ],
    causes: [
      'Loose cable',
      'Incorrect input source',
      'Failed graphics card',
    ],
  ),
  HardwareIssue(
    title: 'Overheating',
    icon: Icons.thermostat,
    steps: [
      'Clean the dust from fans and vents.',
      'Ensure proper ventilation around the device.',
      'Use a cooling pad for laptops.',
    ],
    causes: [
      'Dust buildup',
      'Blocked airflow',
      'Failing fan',
    ],
  ),
  HardwareIssue(
    title: 'Slow performance / lagging',
    icon: Icons.speed,
    steps: [
      'Close unnecessary background applications.',
      'Scan for malware and viruses.',
      'Upgrade your RAM or switch to an SSD.',
    ],
    causes: [
      'Too many apps running',
      'Malware infection',
      'Insufficient RAM',
    ],
  ),
  HardwareIssue(
    title: 'Battery drains quickly',
    icon: Icons.battery_alert,
    steps: [
      'Reduce screen brightness.',
      'Disable unused wireless connections (Bluetooth, Wi-Fi).',
      'Check battery health and consider replacement.',
    ],
    causes: [
      'High screen brightness',
      'Background processes',
      'Aging battery',
    ],
  ),
  HardwareIssue(
    title: 'WiFi / network issues',
    icon: Icons.wifi_off,
    steps: [
      'Restart your router and modem.',
      'Forget the network and reconnect.',
      'Update your network adapter drivers.',
    ],
    causes: [
      'Router issues',
      'Incorrect password',
      'Outdated drivers',
    ],
  ),
  HardwareIssue(
    title: 'Blue screen (BSOD) / system crash',
    icon: Icons.error,
    steps: [
      'Note the error code and search for it online.',
      'Update your system and drivers.',
      'Check for recently installed hardware or software.',
    ],
    causes: [
      'Driver conflicts',
      'Hardware failure',
      'Corrupted system files',
    ],
  ),
  HardwareIssue(
    title: 'Keyboard / mouse not working',
    icon: Icons.keyboard,
    steps: [
      'Reconnect the device or try a different USB port.',
      'Replace the batteries (if wireless).'
      'Check for driver updates.',
    ],
    causes: [
      'Loose connection',
      'Dead batteries',
      'Driver issues',
    ],
  ),
  HardwareIssue(
    title: 'Printer not responding',
    icon: Icons.print,
    steps: [
      'Check if the printer is on and connected.',
      'Restart the printer and your computer.',
      'Check the print queue for stuck jobs.',
    ],
    causes: [
      'Not powered on',
      'Loose cable',
      'Print job error',
    ],
  ),
  HardwareIssue(
    title: 'Audio / speaker problems',
    icon: Icons.volume_up,
    steps: [
      'Check the volume levels and mute status.',
      'Ensure speakers are properly connected.',
      'Update your audio drivers.',
    ],
    causes: [
      'Muted volume',
      'Loose speaker connection',
      'Outdated audio drivers',
    ],
  ),
];
