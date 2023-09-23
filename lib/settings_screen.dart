import 'package:flutter/material.dart';
import 'theme.dart';

class SettingsScreen extends StatelessWidget {
  const SettingsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () {
            // Navigate back to the MorePage when the back arrow is clicked
            Navigator.of(context).pop();
          },
        ),
        title: const Text('Settings'),
        backgroundColor: getSelectedColor(context),
      ),
      // Add your settings content here
      body: const Center(
        child: Text('Settings Page Content'),
      ),
    );
  }
}