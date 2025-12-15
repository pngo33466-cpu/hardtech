
# Project Blueprint: HardTech App

## Overview

A mobile application designed to provide users with detailed, step-by-step guides for assembling and disassembling personal computer hardware components. The app features a clean, dark-themed interface with clear instructions and visual aids.

## Implemented Features & Style

*   **Core Navigation:** A home screen lists various hardware components. Tapping a component navigates to a dedicated detail screen.
*   **Dark Theme:** The application uses a consistent dark theme (`Colors.black`, `Colors.grey[850]`) with a striking blue accent color (`Color(0xFF1DB6FF)`) for titles and important elements.
*   **Component Detail Screens:**
    *   Each detail screen provides step-by-step assembly and disassembly instructions.
    *   Uses a custom `AssemblyTimeline` widget to present instructions clearly with icons (`Icons.build`, `Icons.undo`).
*   **CPU Detail Screen:**
    *   Displays assembly/disassembly steps for a CPU.
    *   Features an "Image Guides" section with tappable images that open in a full-screen view (`FullScreenImageScreen`).
    *   Images used: `installing-a-cpu21.png`, `allignment27.jpg`, `allignment28.jpg`.
*   **CPU Cooler Detail Screen:**
    *   Displays assembly/disassembly steps for a CPU Cooler.
    *   Features an "Image Guides" section with placeholders for images related to thermal paste application, cooler mounting, and fan connection.

## Current Plan: Fix Missing Images

### Goal
Resolve the issue where images for "Cooler Mounting" and "Connecting Fan" are not displaying on the CPU Cooler Detail Screen.

### Problem Analysis
The code in `lib/screens/cpu_cooler_detail_screen.dart` correctly references the image paths (`assets/images/coolermastercpu-coole.png` and `assets/images/cpu fan support.jpg`). However, diagnostic checks have confirmed that these image files are **not present** in the `assets/images/` directory of the project. The application cannot render images that do not exist in the specified asset path.

### Resolution Steps
1.  **Locate Files:** The user must locate the image files `coolermastercpu-coole.png` and `cpu fan support.jpg` on their local machine.
2.  **Add to Project:** The user needs to drag and drop these image files directly into the `assets/images/` folder within the IDE's file explorer.
3.  **Verification:** Once the files are correctly placed in the assets folder, Flutter's hot reload mechanism will automatically detect them, and the images will render correctly in the application without any further code changes.

