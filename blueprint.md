# Hard Tech App Blueprint

## Overview

A mobile application that helps users troubleshoot common hardware issues.

## Style and Design

*   **Theme**: Modern dark theme with blue accents (`#1DB6FF`).
*   **Layout**: Clean spacing with rounded cards and timeline-based step-by-step guides.
*   **Troubleshooting View**: A vertical timeline design is used to make the step-by-step procedures more intuitive and visually appealing.

## Features

### Navigation

*   **Bottom Navigation Bar**: Provides access to Home, Search, Tools, and Profile screens.

### Splash Screen

*   Displays the app logo and a progress indicator for 3 seconds.

### Home Screen

*   Displays a grid of the 10 most common hardware issues.
*   Each issue is a selectable card with an icon.
*   Tapping a card navigates to a troubleshooting screen.

### Search Screen

*   **Search Bar**: Allows users to search for issues, devices, or error codes.
*   **Popular Searches**: Displays a list of common search terms as chips for quick access.
*   **Search Results**: Shows a list of relevant troubleshooting guides based on the user's search query. Tapping a result navigates to the `TroubleshootingGuideScreen`.

### Tools Screen

*   A placeholder screen for future diagnostic tools. Currently displays a "Coming Soon" message.

### Profile Screen

*   A placeholder screen for user profiles. Currently displays a "Coming Soon" message.

### Troubleshooting Screen

*   Presents troubleshooting steps in a vertical timeline using the `timeline_tile` package.
*   Each step is displayed in a card with a distinct title, description, and a list of possible causes, each highlighted with an icon and chip.

### Troubleshooting Guide Screen

*   Dynamically displays a detailed step-by-step guide for a selected hardware issue.
*   Includes a list of possible causes and an image attachment box for users to add screenshots or pictures.

## Data Model

*   **HardwareIssue**: A model that represents a hardware issue, including its title, icon, troubleshooting steps, and possible causes.
*   **hardware_issues.dart**: A data file that contains a list of the 10 most common hardware issues and their corresponding troubleshooting guides.

## Testing

*   A widget test verifies that the splash screen appears and correctly navigates to the main screen.

## Current Plan

*   Refine the search and troubleshooting functionality by replacing placeholder content with the 10 common hardware issues and making the troubleshooting guides dynamic.
