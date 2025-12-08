import 'package:flutter/material.dart';
import 'package:hardtech/models/pc_component.dart';
import 'package:hardtech/screens/cables_detail_screen.dart';
import 'package:hardtech/screens/case_fans_detail_screen.dart';
import 'package:hardtech/screens/cpu_cooler_detail_screen.dart';
import 'package:hardtech/screens/cpu_detail_screen.dart';
import 'package:hardtech/screens/gpu_detail_screen.dart';
import 'package:hardtech/screens/motherboard_detail_screen.dart';
import 'package:hardtech/screens/pc_case_detail_screen.dart';
import 'package:hardtech/screens/psu_detail_screen.dart';
import 'package:hardtech/screens/ram_detail_screen.dart';
import 'package:hardtech/screens/storage_detail_screen.dart';

final List<PCComponent> pcComponents = [
  const PCComponent(
    name: 'Motherboard',
    icon: Icons.developer_board,
    destinationScreen: MotherboardDetailScreen(),
  ),
  const PCComponent(
    name: 'Processor (CPU)',
    icon: Icons.memory,
    destinationScreen: CPUDetailScreen(),
  ),
  const PCComponent(
    name: 'CPU Cooler / Fan',
    icon: Icons.ac_unit,
    destinationScreen: CPUCoolerDetailScreen(),
  ),
  const PCComponent(
    name: 'RAM (Memory)',
    icon: Icons.sd_storage,
    destinationScreen: RAMDetailScreen(),
  ),
  const PCComponent(
    name: 'Storage (SSD/HDD)',
    icon: Icons.storage,
    destinationScreen: StorageDetailScreen(),
  ),
  const PCComponent(
    name: 'Power Supply (PSU)',
    icon: Icons.power,
    destinationScreen: PSUDetailScreen(),
  ),
  const PCComponent(
    name: 'Graphics Card (GPU)',
    icon: Icons.video_library,
    destinationScreen: GpuDetailScreen(),
  ),
  const PCComponent(
    name: 'PC Case',
    icon: Icons.desktop_windows,
    destinationScreen: PcCaseDetailScreen(),
  ),
  const PCComponent(
    name: 'Case Fans',
    icon: Icons.toys,
    destinationScreen: CaseFansDetailScreen(),
  ),
  const PCComponent(
    name: 'Cables',
    icon: Icons.cable,
    destinationScreen: CablesDetailScreen(),
  ),
];
