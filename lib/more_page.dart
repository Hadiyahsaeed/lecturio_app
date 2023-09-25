import 'package:flutter/material.dart';
import 'settings_screen.dart';
import 'theme.dart'; // Import your theme.dart file

class MorePage extends StatelessWidget {
  const MorePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
  title: const Row(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      Text(
        'Lecturi',
        style: TextStyle(
         color: Colors.white, // Use getSelectedColor for text color
          fontSize: 20.0,
          fontWeight: FontWeight.bold,
        ),
      ),
      Text(
        'o',
        style: TextStyle(
          color: Colors.white, // Use the specific color you want
          fontSize: 20.0,
          fontWeight: FontWeight.bold,
        ),
      ),
    ],
  ),
  backgroundColor: getSelectedColor(context), // Set the background color of the AppBar
),

      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              width: 80.0,
              height: 80.0,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: getSelectedColor(context), // Use getSelectedColor for circle color
              ),
              child: const Icon(
                Icons.person,
                color: Colors.white, // Use the specific color you want
                size: 60.0,
              ),
            ),
            const SizedBox(height: 16.0),
            const Text(
              'Hadiyah',
              style: TextStyle(
                fontSize: 16.0,
                fontWeight: FontWeight.bold,
                color: Colors.black, // Use getSelectedColor for text color
              ),
            ),
            const SizedBox(height: 8.0),
            const Text(
              'hadiyahsaeed2012@gmail.com',
              style: TextStyle(
                fontSize: 14.0,
                color: Colors.black, // Use getSelectedColor for text color
              ),
            ),
            const SizedBox(height: 16.0),
            IconButton(
              icon: const Icon(Icons.settings),
              onPressed: () {
                // Navigate to the SettingsScreen when the icon button is clicked
                Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) => const SettingsScreen(),
                ));
              },
            ),
          ],
        ),
      ),
    );
  }
}
