import 'package:flutter/material.dart';
import 'package:provider/provider.dart'; // Import the provider library.
import 'theme_provider.dart';
// Import your theme.dart file

class BookmatcherScreen extends StatelessWidget {
  final Color? selectedColor; // Make selectedColor nullable

  const BookmatcherScreen({Key? key, this.selectedColor}) : super(key: key);

  @override
  Widget build(BuildContext context) {
     Color selectedColor = Provider.of<ThemeProvider>(context).selectedColor;// Use a default color (e.g., Colors.blue) if selectedColor is null

    return Scaffold(
      appBar: AppBar(
        title: const Text('BookMatcher'),
        backgroundColor: selectedColor,
      ),
      body: const Center(
        child: Text('BOOKMATCHER'),
      ),
    );
  }
}
