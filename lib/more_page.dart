import 'package:flutter/material.dart';
import 'package:app_lecturio/settings_screen.dart';


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
                color: Colors.black,
                fontSize: 20.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(
              'o',
              style: TextStyle(
                color: Colors.white,
                fontSize: 20.0,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              width: 80.0,
              height: 80.0,
              decoration: const BoxDecoration(
                shape: BoxShape.circle,
                color: Colors.blue, // Change the color as needed
              ),
              child: const Icon(
                Icons.person,
                color: Colors.white, // Change the color as needed
                size: 60.0,
              ),
            ),
            const SizedBox(height: 16.0),
            const Text(
              'Hadiyah',
              style: TextStyle(
                fontSize: 16.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 8.0),
            const Text(
              'hadiyahsaeed2012@gmail.com',
              style: TextStyle(
                fontSize: 14.0,
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