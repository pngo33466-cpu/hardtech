import 'package:flutter/material.dart';
import 'package:hardtech/data/hardware_issues.dart';
import 'package:hardtech/models/hardware_issue.dart';

class CommonHardwareIssuesScreen extends StatefulWidget {
  const CommonHardwareIssuesScreen({super.key});

  @override
  State<CommonHardwareIssuesScreen> createState() =>
      _CommonHardwareIssuesScreenState();
}

class _CommonHardwareIssuesScreenState extends State<CommonHardwareIssuesScreen> {
  final TextEditingController _searchController = TextEditingController();
  List<HardwareIssue> _searchResults = [];

  @override
  void initState() {
    super.initState();
    // Initially, show all issues
    _searchResults = hardwareIssues;
    _searchController.addListener(() {
      _performSearch(_searchController.text);
    });
  }

  void _performSearch(String query) {
    final results = query.isEmpty
        ? hardwareIssues
        : hardwareIssues
            .where((issue) =>
                issue.title.toLowerCase().contains(query.toLowerCase()) ||
                issue.description.toLowerCase().contains(query.toLowerCase()))
            .toList();
    setState(() {
      _searchResults = results;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Common Hardware Issues'),
      ),
      body: Column(
        children: [
          _buildSearchBar(),
          Expanded(
            child: _buildResultsList(),
          ),
        ],
      ),
    );
  }

  Widget _buildSearchBar() {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Container(
        decoration: BoxDecoration(
          color: Colors.grey[850],
          borderRadius: BorderRadius.circular(16.0),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.3),
              blurRadius: 8,
              offset: const Offset(0, 4),
            ),
          ],
        ),
        child: TextField(
          controller: _searchController,
          decoration: InputDecoration(
            hintText: 'Search issues like "No Display" or "BSOD"...',
            prefixIcon: const Icon(Icons.search, color: Color(0xFF1DB6FF)),
            filled: true,
            fillColor: Colors.transparent,
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(16.0),
              borderSide: BorderSide.none,
            ),
            suffixIcon: _searchController.text.isNotEmpty
                ? IconButton(
                    icon: const Icon(Icons.clear, color: Colors.white54),
                    onPressed: () {
                      _searchController.clear();
                    },
                  )
                : null,
          ),
        ),
      ),
    );
  }

  Widget _buildResultsList() {
    if (_searchResults.isEmpty) {
      return const Center(
        child: Text(
          'No results found.',
          style: TextStyle(color: Colors.white54, fontSize: 16),
        ),
      );
    }

    return ListView.builder(
      itemCount: _searchResults.length,
      itemBuilder: (context, index) {
        final issue = _searchResults[index];
        return Card(
          margin: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
          color: Colors.grey[800],
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12.0)),
          elevation: 3,
          child: ExpansionTile(
            iconColor: const Color(0xFF1DB6FF),
            collapsedIconColor: Colors.white70,
            title: Text(
              issue.title,
              style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
            ),
            subtitle: Padding(
              padding: const EdgeInsets.only(top: 8.0),
              child: Text(
                issue.description,
                style: const TextStyle(color: Colors.white70),
              ),
            ),
            children: issue.steps.map((step) {
              return Container(
                color: Colors.grey[850], // Slightly different color for steps
                child: ListTile(
                  contentPadding:
                      const EdgeInsets.symmetric(horizontal: 24.0, vertical: 8.0),
                  title: Text(step.title, style: const TextStyle(fontWeight: FontWeight.w600, color: Color(0xFF1DB6FF))),
                  subtitle: Text(step.description, style: TextStyle(color: Colors.white.withOpacity(0.8))),
                ),
              );
            }).toList(),
          ),
        );
      },
    );
  }

  @override
  void dispose() {
    _searchController.dispose();
    super.dispose();
  }
}
