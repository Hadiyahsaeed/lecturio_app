import 'package:flutter/material.dart';

class SettingsPopup extends StatelessWidget {
  const SettingsPopup({super.key});

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: const Text(
        'Select your library',
        style: TextStyle(fontWeight: FontWeight.bold),
      ),
      content: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Pre-Medical / Generic',
              style: TextStyle(color: Colors.green, fontWeight: FontWeight.bold),
            ),
            const Text('Pre-Medical / MCAT'),
            const Text('Pre-Medical / NEET-UG'),
            ExpansionTile(
              title: const Text(
                'Pre-Clinical / Generic',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              children: [
                ListTile(
                  leading: const Icon(Icons.looks_one),
                  title: const Text('Item 1'),
                  onTap: () {
                    // Implement action for Item 1
                  },
                ),
                ListTile(
                  leading: const Icon(Icons.looks_two),
                  title: const Text('Item 2'),
                  onTap: () {
                    // Implement action for Item 2
                  },
                ),
                ListTile(
                  leading: const Icon(Icons.looks_3),
                  title: const Text('Item 3'),
                  onTap: () {
                    // Implement action for Item 3
                  },
                ),
              ],
            ),
            ExpansionTile(
              title: const Text(
                'Pre-Medical / USMLE Step 1',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              children: [
                ListTile(
                  leading: const Icon(Icons.looks_one),
                  title: const Text('Item 1'),
                  onTap: () {
                    // Implement action for Item 1
                  },
                ),
                ListTile(
                  leading: const Icon(Icons.looks_two),
                  title: const Text('Item 2'),
                  onTap: () {
                    // Implement action for Item 2
                  },
                ),
                ListTile(
                  leading: const Icon(Icons.looks_3),
                  title: const Text('Item 3'),
                  onTap: () {
                    // Implement action for Item 3
                  },
                ),
                ListTile(
                  leading: const Icon(Icons.looks_4),
                  title: const Text('Item 4'),
                  onTap: () {
                    // Implement action for Item 4
                  },
                ),
              ],
            ),
            ExpansionTile(
              title: const Text(
                'Pre-Clinical / COMPLEX Level 1',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              children: [
                ListTile(
                  leading: const Icon(Icons.looks_one),
                  title: const Text('Item 1'),
                  onTap: () {
                    // Implement action for Item 1
                  },
                ),
                ListTile(
                  leading: const Icon(Icons.looks_two),
                  title: const Text('Item 2'),
                  onTap: () {
                    // Implement action for Item 2
                  },
                ),
              ],
            ),
            const Text(
              'Clinical / Generic',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
          ],
        ),
      ),
      actions: [
        TextButton(
          onPressed: () {
            Navigator.of(context).pop(); // Dismiss the popup
          },
          child: const Text('OK'),
        ),
      ],
    );
  }
}
