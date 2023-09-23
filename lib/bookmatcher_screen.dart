import 'package:flutter/material.dart';// Import your theme.dart file

class BookmatcherScreen extends StatelessWidget {
  final Color? selectedColor; // Make selectedColor nullable

  const BookmatcherScreen({Key? key, this.selectedColor}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final backgroundColor = selectedColor ?? Colors.blue; // Use a default color (e.g., Colors.blue) if selectedColor is null

    return Scaffold(
      appBar: AppBar(
        title: const Text('BookMatcher'),
        backgroundColor: backgroundColor,
      ),
      body: const Center(
        child: Text('BOOKMATCHER'),
      ),
    );
  }
}
