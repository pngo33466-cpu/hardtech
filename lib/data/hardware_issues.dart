import 'package:hardtech/models/hardware_issue.dart';
import 'package:hardtech/models/troubleshooting_step.dart';

final List<HardwareIssue> hardwareIssues = [
  HardwareIssue(
    title: 'PC won\'t turn on',
    description: 'The computer shows no signs of power. No fans spinning, no lights.',
    steps: [
      TroubleshootingStep(
          title: 'Check Power Cable', description: 'Ensure the power cable is securely plugged into both the wall outlet and the computer\'s power supply unit (PSU).'),
      TroubleshootingStep(
          title: 'Check PSU Switch', description: 'Make sure the switch on the back of the PSU is in the ON position (usually marked with \'I\').'),
      TroubleshootingStep(
          title: 'Test Wall Outlet', description: 'Plug another device (like a lamp) into the outlet to confirm it\'s working.'),
    ],
  ),
  HardwareIssue(
    title: 'No Display on Monitor',
    description: 'The computer seems to be on (fans spinning, lights on), but nothing appears on the screen.',
    steps: [
      TroubleshootingStep(
          title: 'Check Monitor Cable', description: 'Ensure the video cable (HDMI, DisplayPort, etc.) is securely connected to both the monitor and the graphics card.'),
      TroubleshootingStep(
          title: 'Check Monitor Power', description: 'Make sure the monitor is plugged in and turned on.'),
      TroubleshootingStep(
          title: 'Reseat RAM', description: 'Turn off the PC, unplug it, open the case, and reseat the RAM sticks in their slots.'),
    ],
  ),
  HardwareIssue(
    title: 'Overheating',
    description: 'The computer is shutting down unexpectedly, especially during intensive tasks, or is very hot to the touch.',
    steps: [
      TroubleshootingStep(
          title: 'Clean Fans and Vents', description: 'Dust buildup can block airflow. Use compressed air to clean out fans and vents.'),
      TroubleshootingStep(
          title: 'Check Fan Operation', description: 'Make sure all fans (CPU, GPU, case) are spinning when the computer is on.'),
      TroubleshootingStep(
          title: 'Reapply Thermal Paste', description: 'If the CPU is old, the thermal paste between the CPU and its cooler may need to be replaced.'),
    ],
  ),
  HardwareIssue(
    title: 'Blue Screen of Death (BSOD)',
    description: 'The computer crashes and displays a blue screen with error information.',
    steps: [
      TroubleshootingStep(
          title: 'Note Down Error Code', description: 'When the BSOD appears, write down the STOP code (e.g., IRQL_NOT_LESS_OR_EQUAL). This is key to diagnosing the problem.'),
      TroubleshootingStep(
          title: 'Check Recent Changes', description: 'Think about any new hardware or software you recently installed. Try uninstalling it.'),
      TroubleshootingStep(
          title: 'Update Drivers', description: 'Outdated or corrupt drivers are a primary cause. Update your graphics, chipset, and other critical drivers.'),
      TroubleshootingStep(
          title: 'Run Memory Diagnostic', description: 'Faulty RAM can cause BSODs. Use the Windows Memory Diagnostic tool to check your RAM for errors.'),
    ],
  ),
  HardwareIssue(
    title: 'Slow Computer Performance',
    description: 'The computer takes a long time to boot up, open applications, or perform tasks.',
    steps: [
      TroubleshootingStep(
          title: 'Check Startup Programs', description: 'Too many programs starting with Windows can slow it down. Use Task Manager to disable unnecessary startup applications.'),
      TroubleshootingStep(
          title: 'Free Up Disk Space', description: 'A nearly full hard drive or SSD can slow down your system. Run Disk Cleanup to remove temporary files.'),
      TroubleshootingStep(
          title: 'Scan for Malware', description: 'Viruses and malware can consume system resources. Run a full scan with your antivirus software.'),
      TroubleshootingStep(
          title: 'Check Hard Drive Health', description: 'Use a tool like CrystalDiskInfo to check the health of your HDD or SSD. A failing drive can cause severe slowdowns.'),
    ],
  ),
   HardwareIssue(
    title: 'No Sound / Audio Problems',
    description: 'No audio is coming from the speakers or headphones, or the sound is distorted.',
    steps: [
      TroubleshootingStep(
          title: 'Check Physical Connections', description: 'Ensure speakers/headphones are properly plugged into the correct audio jack (usually green). Check the volume knob.'),
      TroubleshootingStep(
          title: 'Check Sound Settings', description: 'In Windows, right-click the speaker icon and go to the \'Playback\' tab. Make sure the correct device is set as default.'),
      TroubleshootingStep(
          title: 'Run Audio Troubleshooter', description: 'Windows has a built-in troubleshooter. Right-click the speaker icon and select \'Troubleshoot sound problems\'.'),
      TroubleshootingStep(
          title: 'Reinstall Audio Drivers', description: 'Go to Device Manager, find your audio device, right-click and uninstall it. Then, restart your PC to have Windows reinstall the driver.'),
    ],
  ),
  HardwareIssue(
    title: 'PC Making Loud Noises',
    description: 'The computer is making unusual grinding, clicking, or loud whirring noises.',
    steps: [
      TroubleshootingStep(
          title: 'Identify the Source', description: 'Carefully listen to pinpoint which component is making the noise. It\'s usually a fan or a hard drive.'),
      TroubleshootingStep(
          title: 'Fan Noise (Whirring/Rattling)', description: 'A loud fan is often caused by dust or a failing bearing. Clean the fan with compressed air. If the noise persists, the fan may need to be replaced.'),
      TroubleshootingStep(
          title: 'Hard Drive Noise (Clicking/Grinding)', description: 'This is a serious sign of a failing mechanical hard drive. Back up your data immediately. The drive will likely need to be replaced.'),
    ],
  ),
  HardwareIssue(
    title: 'Internet/Wi-Fi Not Connecting',
    description: 'The computer cannot connect to the internet, either via Wi-Fi or an Ethernet cable.',
    steps: [
      TroubleshootingStep(
          title: 'Restart Router and Modem', description: 'Unplug your modem and router for 30 seconds, then plug them back in.'),
      TroubleshootingStep(
          title: 'Check Physical Connections (Ethernet)', description: 'Ensure the Ethernet cable is securely plugged into both your PC and the router.'),
      TroubleshootingStep(
          title: 'Forget and Reconnect (Wi-Fi)', description: 'In your Wi-Fi settings, \'Forget\' your network and then reconnect.'),
      TroubleshootingStep(
          title: 'Update Network Drivers', description: 'Go to Device Manager, find your network adapter, and check for driver updates.'),
    ],
  ),
  HardwareIssue(
    title: 'USB Ports Not Working',
    description: 'Devices plugged into USB ports are not being recognized or are not functioning correctly.',
    steps: [
      TroubleshootingStep(
          title: 'Test a Different Device and Port', description: 'Try a different USB device in the same port, and try your device in a different USB port.'),
      TroubleshootingStep(
          title: 'Restart the Computer', description: 'A simple reboot can often resolve temporary USB controller issues.'),
      TroubleshootingStep(
          title: 'Check Device Manager', description: 'Look for your USB controllers in Device Manager. If there\'s a yellow exclamation mark, there might be a driver issue.'),
    ],
  ),
  HardwareIssue(
    title: 'Random Restarts or Freezes',
    description: 'The computer randomly freezes or reboots on its own without warning.',
    steps: [
      TroubleshootingStep(
          title: 'Check for Overheating', description: 'Monitor your CPU and GPU temperatures. Random restarts are a classic symptom of overheating.'),
      TroubleshootingStep(
          title: 'Test Your Power Supply (PSU)', description: 'A failing or inadequate PSU can cause random restarts under load.'),
      TroubleshootingStep(
          title: 'Test Your RAM', description: 'Run a memory diagnostic tool like MemTest86 for a thorough check. Even a single error can cause instability.'),
      TroubleshootingStep(
          title: 'Check Event Viewer', description: 'In Windows, check the Event Viewer for \'Critical\' errors around the time of the restart. This can provide clues about the cause.'),
    ],
  ),
];
