import 'bookmatcher_screen.dart';
import 'notifications_screen.dart';
import 'search_screen.dart';
import 'settings_popup.dart';
import 'package:flutter/material.dart';
import 'theme.dart'; // Import your theme.dart file

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home'),
        backgroundColor: getSelectedColor(context),
        actions: [
          IconButton(
            icon: const Icon(Icons.menu_book_outlined),
            onPressed: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) => BookmatcherScreen(selectedColor: getSelectedColor(context)), // Use getSelectedColor
                ),
              );
            },
          ),
          IconButton(
            icon: const Icon(Icons.search),
            onPressed: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) => const SearchScreen(), // Navigate to the second screen
                ),
              );
            },
          ),
          IconButton(
            icon: const Icon(Icons.notifications), // Add a new IconButton with a different icon
            onPressed: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) => const NotificationsScreen(), // Navigate to the third screen
                ),
              );
            },
          ),
        ],
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const SizedBox(height: 20), // Add some space between AppBar and buttons
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Column(
                children: [
                  ElevatedButton(
                    onPressed: () {
                      // Implement the action for the first button here
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.white, // Use Colors.white for non-selected background
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                    ),
                    child: Builder(
  builder: (context) => Icon(
    Icons.video_library,
    color: getSelectedColor(context), // Use getSelectedColor for icon color
    size: 48.0,
  ),
),
                  ),
                  const SizedBox(height: 8),
                  const Text(
                    'Videos',
                    style: TextStyle(
                      color: Colors.black,
                    ),
                  ),
                ],
              ),
              Column(
                children: [
                  ElevatedButton(
                    onPressed: () {
                      // Implement the action for the second button here
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.white, // Use Colors.white for non-selected background
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                    ),
                    child: Builder(
  builder: (context) => Icon(
    Icons.file_copy,
    color: getSelectedColor(context), // Use getSelectedColor for icon color
    size: 48.0,
  ),
),
                  ),
                  const SizedBox(height: 8),
                  const Text(
                    'Concept Pages',
                    style: TextStyle(
                      color: Colors.black,
                    ),
                  ),
                ],
              ),
              Column(
                children: [
                  ElevatedButton(
                    onPressed: () {
                      // Implement the action for the third button here
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.white, // Use Colors.white for non-selected background
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                    ),
                    child: Builder(
  builder: (context) => Text(
    'Q',
    style: TextStyle(
      fontSize: 45, // Adjust the font size as needed
      fontWeight: FontWeight.w100, // Adjust the font weight as needed
      color: getSelectedColor(context), // Use getSelectedColor for text color
    ),
  ),
),
                  ),
                  const SizedBox(height: 8),
                  const Text(
                    'Q bank',
                    style: TextStyle(
                      color: Colors.black,
                    ),
                  ),
                ],
              ),
              Column(
                children: [
                  ElevatedButton(
                    onPressed: () {
                      // Implement the action for the fourth button here
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.white, // Use Colors.white for non-selected background
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                    ),
                    child: Builder(
  builder: (context) => Icon(
    Icons.repeat,
    color: getSelectedColor(context), // Use getSelectedColor for icon color
    size: 48.0,
  ),
),
                  ),
                  const SizedBox(height: 8),
                  const Text(
                    'Spaced repetition',
                    style: TextStyle(
                      color: Colors.black,
                    ),
                  ),
                ],
              ),
            ],
          ),
          const SizedBox(height: 20), // Add space between buttons and card
          Card(
            elevation: 4.0,
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Container(
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: getSelectedColor(context), // Use getSelectedColor for circle color
                        ),
                        child: const Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Icon(
                            Icons.calendar_today,
                            color: Colors.white,
                          ),
                        ),
                      ),
                      const SizedBox(width: 8.0),
                      const Text(
                        'Question of the day',
                        style: TextStyle(
                          fontSize: 20.0,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 8.0),
                  const Text(
                    'Your daily challenge',
                    style: TextStyle(
                      fontSize: 16.0,
                    ),
                  ),
                  const SizedBox(height: 16.0),
                  const Text(
                    'A 68-year-old man presents to the ED with difficulty in breathing for the past 2 days and 4.5 (10 lb) of unintentional weight loss ove...',
                    style: TextStyle(
                      fontSize: 14.0,
                    ),
                  ),
                  const SizedBox(height: 16.0),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      ElevatedButton(
                        onPressed: () {
                          // Implement the action for "OPEN" button here
                        },
                        style: ElevatedButton.styleFrom(
                          backgroundColor: getSelectedColor(context), // Use getSelectedColor for button color
                        ),
                        child: const Text('OPEN'),
                      ),
                      ElevatedButton(
                        onPressed: () {
                          // Implement the action for "MORE QUESTIONS" button here
                        },
                        style: ElevatedButton.styleFrom(
                          backgroundColor: getSelectedColor(context), // Use getSelectedColor for button color
                        ),
                        child: const Text('MORE QUESTIONS'),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
          const SizedBox(height: 20),
           // Add space between cards
          Card(
            elevation: 4.0,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              
              children: [
      
                ExpansionTile(
                  title: const Text('Videos', 
                    style: TextStyle(
          color: Colors.black, // Use the specific color you want
        ),
                  ),
                  trailing: IconButton(
    icon: const Icon(Icons.settings),
    onPressed: () {
      showDialog(
        context: context,
        builder: (context) => const SettingsPopup(), // Show the settings popup
      );
    },
  ),
                 
                  children: [
                    ListTile(
  leading: Builder(
    builder: (context) => Icon(
      Icons.medical_services,
      color: getSelectedColor(context), // Use getSelectedColor for icon color
    ),
  ),
  title: const Text('Medical School Survival Guide'),
  onTap: () {
    // Implement action for "Aging" item here
  },
),
                   ListTile(
  leading: Builder(
    builder: (context) => Icon(
      Icons.lightbulb_outline,
      color: getSelectedColor(context), // Use getSelectedColor for icon color
    ),
  ),
  title: const Text('Durable Learning'),
  onTap: () {
    // Implement action for "Aging" item here
  },
),
                    ListTile(
  leading: Builder(
    builder: (context) => Icon(
      Icons.biotech,
      color: getSelectedColor(context), // Use getSelectedColor for icon color
    ),
  ),
  title: const Text('Biochemistry: Basics'),
  onTap: () {
    // Implement action for "Aging" item here
  },
),
                    // Add more items as needed
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
