import 'package:flutter/material.dart';
import 'package:hardtech/data/hardware_issues.dart';
import 'package:hardtech/models/hardware_issue.dart';
import 'package:hardtech/screens/troubleshooting_guide_screen.dart';

class SearchScreen extends StatefulWidget {
  const SearchScreen({super.key});

  @override
  State<SearchScreen> createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  final TextEditingController _searchController = TextEditingController();
  List<HardwareIssue> _searchResults = [];

  @override
  void initState() {
    super.initState();
    _searchResults = hardwareIssues;
  }

  void _performSearch(String query) {
    if (query.isEmpty) {
      setState(() {
        _searchResults = hardwareIssues;
      });
      return;
    }
    setState(() {
      _searchResults = hardwareIssues
          .where((issue) =>
              issue.title.toLowerCase().contains(query.toLowerCase()))
          .toList();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Search'),
        elevation: 0,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            _buildSearchBar(),
            const SizedBox(height: 24.0),
            if (_searchController.text.isEmpty)
              _buildPopularSearches()
            else
              _buildSearchResults(),
          ],
        ),
      ),
    );
  }

  Widget _buildSearchBar() {
    return TextField(
      controller: _searchController,
      onChanged: _performSearch,
      decoration: InputDecoration(
        hintText: 'Search issues, devices, or error codes...',
        prefixIcon: const Icon(Icons.search, color: Color(0xFF1DB6FF)),
        filled: true,
        fillColor: Colors.grey[850],
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(16.0),
          borderSide: BorderSide.none,
        ),
      ),
    );
  }

  Widget _buildPopularSearches() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          'Popular Searches',
          style: TextStyle(
            fontSize: 20.0,
            fontWeight: FontWeight.bold,
            color: Color(0xFF1DB6FF),
          ),
        ),
        const SizedBox(height: 12.0),
        Wrap(
          spacing: 8.0,
          runSpacing: 8.0,
          children: hardwareIssues.take(4).map((issue) {
            return ActionChip(
              label: Text(issue.title),
              onPressed: () {
                _searchController.text = issue.title;
                _performSearch(issue.title);
              },
              backgroundColor: Colors.grey[800],
              labelStyle: const TextStyle(color: Colors.white70),
            );
          }).toList(),
        ),
      ],
    );
  }

  Widget _buildSearchResults() {
    return Expanded(
      child: ListView.builder(
        itemCount: _searchResults.length,
        itemBuilder: (context, index) {
          final issue = _searchResults[index];
          return Card(
            elevation: 2.0,
            margin: const EdgeInsets.symmetric(vertical: 8.0),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(12.0),
            ),
            color: Colors.grey[850],
            child: ListTile(
              title: Text(
                issue.title,
                style: const TextStyle(color: Colors.white),
              ),
              trailing: const Icon(Icons.arrow_forward_ios, color: Color(0xFF1DB6FF)),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => TroubleshootingGuideScreen(issue: issue),
                  ),
                );
              },
            ),
          );
        },
      ),
    );
  }
}
