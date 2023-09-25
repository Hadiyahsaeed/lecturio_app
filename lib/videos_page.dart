import 'theme.dart';
import 'package:flutter/material.dart';


class VideosPage extends StatelessWidget {
  const VideosPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Pre-Medical/MCAT',
          style: TextStyle(
            color: Colors.white, // Use getSelectedColor for text color
          ),
        ),
        backgroundColor: getSelectedColor(context),
      ),
      body: const Center(
        child: Text(
          'Welcome to the Pre-Medical/MCAT Videos Page!',
          style: TextStyle(
            color: Colors.black, // Use getSelectedColor for text color
          ),
        ),
      ),
    );
  }
}
