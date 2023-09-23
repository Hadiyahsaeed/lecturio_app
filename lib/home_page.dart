import 'package:flutter/material.dart';
import 'package:app_lecturio/main.dart';

void main() {
  runApp(const MyApp());
}



// ignore: use_key_in_widget_constructors
class HomePage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home'),
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
                      backgroundColor: Colors.white,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                    ),
                    child: const Icon(
                      Icons.video_library,
                      color: Colors.blue,
                      size: 48.0,
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
                      backgroundColor: Colors.white,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                    ),
                    child: const Icon(
                      Icons.file_copy,
                      color: Colors.blue,
                      size: 48.0,
                    ),
                  ),
                  const SizedBox(height: 8),
                  const Text(
                    ' Concept Pages',
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
                      backgroundColor: Colors.white,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                    ),
                    child: const Icon(
                      Icons.question_mark_outlined,
                      color: Colors.blue,
                      size: 48.0,
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
                      backgroundColor: Colors.white,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                    ),
                    child: const Icon(
                      Icons.repeat,
                      color: Colors.blue,
                      size: 48.0,
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
                        decoration: const BoxDecoration(
                          shape: BoxShape.circle,
                          color: Colors.blue,
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
                          backgroundColor: Colors.blue,
                        ),
                        child: const Text('OPEN'),
                      ),
                      ElevatedButton(
                        onPressed: () {
                          // Implement the action for "MORE QUESTIONS" button here
                        },
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.blue,
                        ),
                        child: const Text('MORE QUESTIONS'),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
          const SizedBox(height: 20), // Add space between cards
          Card(
            elevation: 4.0,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                ExpansionTile(
                  title: const Text('Recommended videos'),
                  children: [
                    ListTile(
                      leading: const Icon(
                        Icons.medical_services,
                        color: Colors.blue,
                      ),
                      title: const Text('Medical School Survival guide'),
                      onTap: () {
                        // Implement action for "Medical School Survival guide" item here
                      },
                    ),
                    ListTile(
                      leading: const Icon(
                        Icons.lightbulb_outline,
                        color: Colors.blue,
                      ),
                      title: const Text('Durable Learning'),
                      onTap: () {
                        // Implement action for "Durable Learning" item here
                      },
                    ),
                    ListTile(
                      leading: const Icon(
                        Icons.biotech,
                        color: Colors.blue,
                      ),
                      title: const Text('Biochemistry: Basics'),
                      onTap: () {
                        // Implement action for "Biochemistry: Basics" item here
                      },
                    ),
                    ListTile(
                      leading: const Icon(
                        Icons.calculate_outlined,
                        color: Colors.blue,
                      ),
                      title: const Text('Calculus'),
                      onTap: () {
                        // Implement action for "Calculus" item here
                      },
                    ),
                    ListTile(
                      leading: const Icon(
                        Icons.biotech,
                        color: Colors.blue,
                      ),
                      title: const Text('Chemistry'),
                      onTap: () {
                        // Implement action for "Calculus" item here
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
