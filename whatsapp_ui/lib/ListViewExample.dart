import 'package:flutter/material.dart';

class ListViewExample extends StatelessWidget {
  // Sample dynamic data for the list
  final List<Map<String, String>> dynamicData = List.generate(
    20, // Number of items
    (index) => {
      'title': 'Item ${index + 1}', // Dynamic title
      'subtitle':
          'This is the subtitle of item ${index + 1}', // Dynamic subtitle
      'details': 'Detailed information about Item ${index + 1}.'
    },
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('ListView with Navigation'),
      ),
      body: ListView.builder(
        // Using ListView.builder for efficient dynamic list
        itemCount: dynamicData.length, // Total number of items
        itemBuilder: (context, index) {
          // Builds each item dynamically
          return Card(
            margin: EdgeInsets.all(8.0), // Adds margin around the card
            elevation: 4, // Shadow for the card
            child: ListTile(
              // Pre-built widget for list items
              leading: CircleAvatar(
                // Circular avatar at the start
                backgroundColor: Colors.blue,
                child: Text(
                  dynamicData[index]['title']![0], // First letter of the title
                  style: TextStyle(color: Colors.white),
                ),
              ),
              title: Text(dynamicData[index]['title']!), // Title of the item
              subtitle:
                  Text(dynamicData[index]['subtitle']!), // Subtitle of the item
              trailing: Icon(Icons.arrow_forward), // Arrow icon at the end
              onTap: () {
                // Navigate to the details screen
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => DetailsScreen(
                      title: dynamicData[index]['title']!,
                      details: dynamicData[index]['details']!,
                    ),
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

// Details Screen Widget
class DetailsScreen extends StatelessWidget {
  final String title;
  final String details;

  DetailsScreen({required this.title, required this.details});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title), // Title of the selected item
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              title,
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 16),
            Text(
              details,
              style: TextStyle(fontSize: 16),
            ),
            SizedBox(height: 32),
            ElevatedButton(
              onPressed: () {
                // Go back to the previous screen
                Navigator.pop(context);
              },
              child: Text('Go Back'),
            ),
          ],
        ),
      ),
    );
  }
}

